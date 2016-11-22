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

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.build_before = true
  deploy.branch   = "master"
  deploy.remote   = "git@github.com:baloran/baloran.github.io.git"
end

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :cache_buster
  activate :asset_hash

  # Favicon generator
  # https://github.com/follmann/middleman-favicon-maker
=begin
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source/assets/img')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      "favicon.ico" => [
        { icon: "favicon.ico", size: "32x32,16x16" },
      ]
    }
  end
=end
  # Alt image path
  # set :http_prefix, "/Content/images/"
end
