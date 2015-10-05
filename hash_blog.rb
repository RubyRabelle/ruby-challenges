current_blog_post = {
	title: "my title",
	content: "my content",
	p_date: "publish date",
	author_name: "author name"
}
next_blog_post = {
	title: "new title",
	content: "new content",
	p_date: Time.now,
	author_name: " new author name"
}
my_blog = []
my_blog[0] = current_blog_post
my_blog[1] = next_blog_post

puts my_blog

my_blog.each do |thehash|
	#puts "\n"
	#puts thehash.values	
	puts "\nTitle: #{thehash.fetch(:title)}"
	puts "Entry: #{thehash.fetch(:content)}"
	#clean up date string
	str_date = thehash.fetch(:p_date).to_s
	  5.times do str_date.chop! end
	puts "by #{thehash.fetch(:author_name)} on #{str_date}"
	
	end

=begin
fav_books_movies = {
  books: ["Goodnight Moon", "Oh, The Places You'll Go!"], 
  movies: ["Amelie", "Lost In Translation", "My Neighbor Totoro"]
}

puts fav_books_movies
fav_books_movies[:books] << "twilight"
puts "new hash #{fav_books_movies}"

#hash[:a] = 'a'
#new_hash = {books: "twilight", movies: "twilight"}
#fav_books_movies.merge!(books: "twilight", movies: "twilight")

puts fav_books_movies.values
#puts new_hash.values

fav_books = fav_books_movies.fetch(:books)
fav_movies = fav_books_movies.fetch(:movies)

fav_books_str = fav_books.join(', ')
fav_movies_str = fav_movies.join(', ')
=end
