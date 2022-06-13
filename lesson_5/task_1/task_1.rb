# frozen_string_literal: true

require_relative 'lib/cube'
# Если решать задачу строго математически, то для задания куба необходимы хотя бы координаты 3-х вершин
# и центра сферы, вписанной в куб. Подобный подход упростит ввод данных, но приведёт к необходимости
# решения системы уравнений. Можно также задать куб через координаты всех 8 вершин, но тогда программа
# 'захламится' вводом данных. В учебных целях выбран упрощённый подход, т.е. куб задаётся через
# координаты центра сферы , вписанной в него и длину ребра.

cube_fst = Cube.new(center_x: 1, center_y: 4, center_z: 11, edge_size: 3)
# rubocop:disable Lint/UselessAssignment
cube_snd = Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 3)
cube_thd = Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 4)
cube_fth = Cube.new(center_x: 9, center_y: 4, center_z: 11, edge_size: 4)
# rubocop:enable Lint/UselessAssignment
p cube_fst.cubes_list
