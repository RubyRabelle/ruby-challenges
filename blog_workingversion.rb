# blog.rb

class Blog 
	@@num_of_posts= -1
	#@@blog_title_array = Array.new
	#@@blog_post_array = Array.new
	#@@blog_date_array = Array.new
	@@the_blog = Array.new
	def initialize
		#puts "def initialize number of posts: #{@@num_of_posts}"
		@@num_of_posts += 1
		#puts "incremented number of posts: #{@@num_of_posts}"
	end
	def blogger_name
		@blogger_name
	end
	def set_blogger_name= (blogger_name)
		@blogger_name = blogger_name
	end


	def save_blog (title,content,publish_date)
		#puts "going to save blog #{@@num_of_posts}"

		@@the_blog[@@num_of_posts] = "Title: #{title}\n Entry:#{content}\n Publish Date: #{publish_date}\n\n"
		#@@blog_title_array[@@num_of_posts] = title
		#@@blog_post_array[@@num_of_posts] = content
		#@@blog_date_array[@@num_of_posts] = publish_date, "test"
		#puts "finished saving blog"
		#puts "printing title array #{@@blog_title_array}"
		self.inspect
		puts "Do you want to make another entry? Y/N"
			@playtime = gets.downcase.chomp
			if @playtime == 'y'
				#puts "lets play again!"
				runblog
			else
				puts "What is your name?"
				@my_name = gets.chomp
				self.set_blogger_name= @my_name
				puts "Publish the whole blog for #{@blogger_name}\n" 
					@@the_blog.each do |thepost|
				puts thepost

			end
			
		end
		
	end

	
end

class BlogPost < Blog
	def initialize
		puts "What is your Blog Post Title?"
		@bp_title = gets.chomp
		puts "What would you like to say?"
		@bp_content = gets.chomp
		time = Time
		@bp_publish_date = time.now
		self.save_blog(@bp_title, @bp_content, @bp_publish_date)
	end
	def get_blog_title
		return @bp_title
	end
	def get_blog_post
		return @bp_content
	end
	def get_blog_date
		return @bp_publish_date
	end

	def output
		puts "Title: #{@bp_title}"
		puts "Entry: #{@bp_content}"

	end
	

end

def runblog
	rabelle_blog = Blog.new
	my_blog = BlogPost.new
	#my_blog.inspect
	#my_blog.output
	

	#my_blog.save_blog(my_blog.get_blog_title, my_blog.get_blog_post, my_blog.get_blog_date)


	#puts "my blog titles #{@@blog_title_array}"
end

runblog
