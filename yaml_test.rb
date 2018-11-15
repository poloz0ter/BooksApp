require './lib/movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_movie = Movie.new
first_movie.title = 'Old Borov'
first_movie.director = 'Ronny James'
first_movie.year = 2007

second_movie = Movie.new
second_movie.title = 'Star Boy 3'
second_movie.director = 'Bobby Star'
second_movie.year = 2001

store.transaction do
  store['Old Borov'] = first_movie
  store['Star Boy 3'] = second_movie
  
  p store['Old Borov']
end
