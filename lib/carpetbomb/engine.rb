module Carpetbomb
  class << self
    attr_accessor :renderer
  end

  def self.configure
    yield self
  end

  def self.render(&block)
    self.renderer = block
  end

  class Handler
    def initialize
    end

    def call(template, source = nil)
      erb = ActionView::Template.registered_template_handler(:erb)
      compiled_source = if source
                          erb.call(template, source)
                        else
                          erb.call(template)
                        end

      # If the template has any erb tags in it, they will be parsed first.
      # then with the result we call redcarpet to parse the markdown template.
      <<-SOURCE
        Carpetbomb.renderer.call(begin;#{compiled_source};end).html_safe
      SOURCE
    end
  end
end

handler = Carpetbomb::Handler.new

[:md, :mdown, :markdown].each do |extension|
  if defined? ActionView::Template and ActionView::Template.respond_to? :register_template_handler
    ActionView::Template
  elsif defined? ActionView::Template::Handlers and ActionView::Template::Handlers.respond_to? :register_template_handler
    ActionView::Template::Handlers
  else
    raise "Couldn't find 'register_template_handler' method in ActionView module."
  end.register_template_handler(extension, handler)
end
