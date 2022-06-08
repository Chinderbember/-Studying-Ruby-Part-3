# frozen_string_literal: true

require 'forwardable'
class News
  attr_accessor :title, :body, :date

  def initialize(title: 'default title', body: 'default body', date: Time.now)
    @title = title
    @body = body
    @date = date
  end
  include Comparable
  extend Forwardable
  def_delegator :date, :<=>, :<=>
end
