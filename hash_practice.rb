#hash_practice.rb

# comment out the standard hash
=begin
fav_books_movies = {
#	"books" => ["Goodnight Moon", "Oh, The Places You'll Go!"], 
#	"movies" => ["Amelie", "Lost In Translation", "My Neighbor Totoro"]
}

fav_books = fav_books_movies.fetch('books')
fav_movies = fav_books_movies.fetch('movies')

fav_books_str = fav_books.join(', ')
fav_movies_str = fav_movies.join(', ')


puts "My favorite books are: #{fav_books_str}.\nMy favorite movies are: #{fav_movies_str}."
=end

# using symbols for hash
=begin
fav_books_movies = {
  :books => ["Goodnight Moon", "Oh, The Places You'll Go!"], 
  :movies => ["Amelie", "Lost In Translation", "My Neighbor Totoro"]
}

fav_books = fav_books_movies.fetch(:books)
fav_movies = fav_books_movies.fetch(:movies)

fav_books_str = fav_books.join(', ')
fav_movies_str = fav_movies.join(', ')


puts "My favorite books are: #{fav_books_str}.\nMy favorite movies are: #{fav_movies_str}."
=end

fav_books_movies = {
  books: ["Goodnight Moon", "Oh, The Places You'll Go!"], 
  movies: ["Amelie", "Lost In Translation", "My Neighbor Totoro"]
}

puts fav_books_movies
fav_books_movies[:books] << "twilight"
puts "new hash #{fav_books_movies}"

#hash[:a] = 'a'
new_hash = {books: "twilight", movies: "twilight"}
#fav_books_movies.merge!(books: "twilight", movies: "twilight")

puts fav_books_movies.values
puts new_hash.values

fav_books = fav_books_movies.fetch(:books)
fav_movies = fav_books_movies.fetch(:movies)

fav_books_str = fav_books.join(', ')
fav_movies_str = fav_movies.join(', ')


puts "My favorite books are: #{fav_books_str}.\nMy favorite movies are: #{fav_movies_str}."




