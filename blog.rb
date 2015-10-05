# blog.rb

class Blog 
	@@num_of_posts= 0
	@@the_blog = Array.new
	
	def blogger_name
		@blogger_name
	end
	def set_blogger_name= (blogger_name)
		@blogger_name = blogger_name
	end
    
    def publish_blog
			puts "Publish the entire blog for #{@blogger_name}\n" 
			@@the_blog.each do |thepost|
				puts thepost
			end
    end

    def play_again?
    	puts "Do you want to make another entry? Y/N"
			playtime = gets.downcase.chomp
			#result = some_condition ? something : something_else
			result = playtime == 'y' ? true : false

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
		if play_again?
			runblog
		else
			#add name to blog and publish
			puts "What is your name?"
			@my_name = gets.chomp
			self.set_blogger_name= @my_name
			publish_blog
		end	
	end

	
end

class BlogPost < Blog
	def initialize
		puts "Name your blog post"
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
end

def runblog
	my_blog = BlogPost.new
	puts my_blog.inspect
end

runblog
