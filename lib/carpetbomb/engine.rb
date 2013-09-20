module CarpetBomb
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

    def call(template)
      CarpetBomb.renderer.call(template.source).html_safe.inspect
    end
  end
end

CarpetBomb.configure do |config|
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                          :autolink => true,
                                          :space_after_headers => true,
                                          :fenced_code_blocks => true)
  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end

handler = CarpetBomb::Handler.new

[:md, :mdown, :markdown].each do |extension|
  if defined? ActionView::Template and ActionView::Template.respond_to? :register_template_handler
    ActionView::Template
  elsif defined? ActionView::Template::Handlers and ActionView::Template::Handlers.respond_to? :register_template_handler
    ActionView::Template::Handlers
  else
    raise "Couldn't find `register_template_handler' method in ActionView module."
  end.register_template_handler(extension, handler)
end
