lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-paginate-categories/version'


Gem::Specification.new do |s|
  s.name        = "jekyll-paginate-categories"
  s.summary     = "Generate Pagination for Jekyll Categories."
  s.description = "Automatically generate pagination for each category"
  s.version     = Jekyll::Paginate::Categories::VERSION
  s.authors     = ["Julien Guyomard"]
  s.email       = ["julien@mangue.eu"]

  s.homepage    = "https://github.com/jguyomard/jekyll-paginate-categories"
  s.licenses    = ["MIT"]
  s.files       = ["lib/jekyll-paginate-categories.rb", "lib/jekyll-paginate-categories/category-page.rb", "lib/jekyll-paginate-categories/pager.rb"]

  s.add_dependency "jekyll", '>= 2.5'
  s.add_dependency "jekyll-paginate", "~> 1.1"

  s.add_development_dependency  'rake', '~> 0'
end
