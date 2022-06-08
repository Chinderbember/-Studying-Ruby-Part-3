# frozen_string_literal: true

require_relative 'lib/news'

news_page_fst = News.new
news_page_snd = News.new
p news_page_fst < news_page_snd
p news_page_fst > news_page_snd
p news_page_fst == news_page_snd
p news_page_fst >= news_page_snd
