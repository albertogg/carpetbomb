# config/initializers/carpetbomb.rb
#
CarpetBomb.configure do |config|
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                          :autolink => true,
                                          :space_after_headers => true,
                                          :fenced_code_blocks => true)
  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end

