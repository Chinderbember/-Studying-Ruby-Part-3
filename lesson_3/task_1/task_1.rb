module Seomodule
	class Seo
		attr_accessor :title, :description, :keywords
	end

	attr_accessor :seo

	def initialize
		@seo = Seo.new
		super
	end

end

class Page
	attr_accessor :title, :body
end

class News < Page
	prepend Seomodule
	attr_accessor :date
end

class About < Page
	attr_accessor :phones, :address
end

class PhotoCatalog < Page
	attr_accessor :photos
end

news = News.new

news.title = 'title'
p news