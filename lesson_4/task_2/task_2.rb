require 'forwardable'
class News
	attr_accessor :title, :body, :date
	def initialize (title: 'default title', body: 'default body', date: Time.now )
		@title = title
		@body = body
		@date = date
	end
	include Comparable
	extend Forwardable
	def_delegator :date, :<=>, :<=>
end

news_page_fst = News.new
news_page_snd = News.new 
p news_page_fst < news_page_snd 
p news_page_fst > news_page_snd
p news_page_fst == news_page_snd
p news_page_fst >= news_page_snd


