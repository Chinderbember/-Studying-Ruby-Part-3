# frozen_string_literal: true

require_relative 'lib/keywords'

keywords_arr = %w[sale buy sell]
keywords = Keywords.new(keywords_arr)

keywords << 'Buy'
keywords << 'BUY'
keywords << 'seller'

p keywords
