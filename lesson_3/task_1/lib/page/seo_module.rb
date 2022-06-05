module SeoModule
	attr_accessor :seo

	class Seo
		attr_accessor :title, :description, :keywords
	end

	def initialize
		@seo = Seo.new
		super
	end

end
