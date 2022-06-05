# frozen_string_literal: true

require_relative 'lib/page'
require_relative 'lib/page/seo_module'

class News < Page
  prepend SeoModule
  attr_accessor :date
end

class About < Page
  prepend SeoModule
  attr_accessor :phones, :address
end

class PhotoCatalog < Page
  attr_accessor :photos
end

news = News.new
news.title = 'News title'
news.seo.keywords = 'News meta_keywords'
p news.seo.keywords
p news

about = About.new
about.title = 'About title'
about.seo.keywords = 'About meta_keywords'
p about.seo.keywords
p about
