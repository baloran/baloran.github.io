###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :build_dir, 'docs'

set :css_dir, 'stylesheets'
set :fonts_dir, 'fonts'
set :images_dir, 'images'
set :partials_dir, 'partials'

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_html
  activate :minify_javascript, inline: true
end
