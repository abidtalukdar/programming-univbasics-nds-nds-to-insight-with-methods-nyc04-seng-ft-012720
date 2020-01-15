$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  director_movies = director_data[:movies]
  total = 0
  column_index = 0
  while column_index < director_movies.length do
    total += director_movies[column_index][:worldwide_gross]
    column_index += 1
  end  
  return total
end

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    result[nds[row_index][:name]] = gross_for_director(nds[row_index])
    row_index += 1
  end
  return result
end