# frozen_string_literal: true

require_relative 'lib/group'

group = Group.new(users_number: 3)
group.each_with_index { |user, index| puts "#{index + 1} - #{user}" }
