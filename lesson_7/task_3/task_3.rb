# frozen_string_literal: true

require_relative 'lib/extended_hash'
authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

p authors.invert_with_count.double_sort_v_k
