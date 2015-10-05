# blog.rb

class Blog 
	@@num_of_posts= 0
	@@the_blog = Array.new
	@@hash_blog = Array.new
	
	attr_accessor :blogger_name
	#def blogger_name
	#	@blogger_name
	#end
	#def set_blogger_name= (blogger_name)
	#	@blogger_name = blogger_name
	#end

	def get_name
		puts "Enter your name:"
		name = gets.chomp
    end

    def publish_blog
			#puts "Publish the entire blog for #{@blogger_name}\n" 
			#names.each { |name| puts name }  - style guide better
			@@the_blog.each { |blogpost| puts blogpost}

			#style-guide - bad
			#@@the_blog.each do |thepost|
			#	puts thepost
			#end

			@@hash_blog.each do |thehash|
			  puts "\nTitle: #{thehash.fetch(:title)}"
			  puts "Entry: #{thehash.fetch(:content)}"
			  puts "by #{thehash.fetch(:author_name)} on #{thehash.fetch(:p_date)}"
			end
    end

    def play_again
    	puts "Do you want to make another entry? Y/N"
			@playtime = gets.downcase.chomp
			#result = some_condition ? something : something_else
			result = @playtime == 'y' ? true : false

			#if @playtime == 'y'
			#	true
			#else
			#	false
			#end
    end



	def save_blog (title,content,publish_date)
		# saves current entries to blog array 

		#puts "going to save blog #{@@num_of_posts}"

		@@the_blog[@@num_of_posts] = "Title: #{title}\n Entry:#{content}\n Publish Date: #{publish_date}\n\n"
		@@num_of_posts += 1  #increment the number of posts
		
		# test to see if there are more entries
		play_again ? runblog : get_name 
		
			#if play_again
			#	runblog
			#else
				#add name to blog and publish
				#puts "What is your name?"
				#@my_name = gets.chomp
				#self.set_blogger_name= @my_name
			#	get_name
			#	publish_blog
			#end	
		
	end
	def save_blog2 (blog_hash)
		# saves current entries to blog array 

		#puts "going to save blog #{@@num_of_posts}"

		@@hash_blog[@@num_of_posts] = blog_hash
		@@num_of_posts += 1  #increment the number of posts
		
		# test to see if there are more entries
		play_again ? runblog : publish_blog 
		
	
	end


	
end

class BlogPost < Blog
	attr_accessor :author, :bp_title, :bp_content, :bp_publish_date, :current_blog_post

	def initialize
		@author = get_name
		puts "Enter your Blog Post Title"
		  @bp_title = gets.chomp
		puts "What would you like to say?"
		  @bp_content = gets.chomp
	
		@bp_publish_date = Time.now.to_s
			5.times do @bp_publish_date.chop! end

		@current_blog_post = {
			title: @bp_title,
			content: @bp_content,
			p_date: @bp_publish_date,
			author_name: @author
		}

		#self.save_blog(@bp_title, @bp_content, @bp_publish_date)
		self.save_blog2(@current_blog_post)
	end

=begin
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

		
=end
end

def runblog
	my_blog = BlogPost.new
	#puts my_blog.inspect
	#my_blog.publish_blog
end

runblog
#my_blog.publish_blog
