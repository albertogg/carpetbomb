# If you want to add Redcarpet options, this is the file you need to use.
# Just follow the Redcarpet documentation and everything will be fine, or
# at least I hope so.
#
# Check the Redcarpet README for more information.
#
# https://github.com/vmg/redcarpet
#
Carpetbomb.configure do |config|

  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                     :autolink => true,
                                     :space_after_headers => true,
                                     :fenced_code_blocks => true)

  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end

