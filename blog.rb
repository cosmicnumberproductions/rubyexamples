class Blog
    
    @@all_posts = []
    @@total_posts = 0
    
    def self.posts
        @@all_posts
    end 
    
    def self.count(post)
        @@all_posts << post
        @@total_posts =+ 1
    end 
    
    def self.publish
        @@all_posts.each do |info|
            puts "Title:\n #{info.get_title}"
            puts "Author:\n #{info.get_author}"
            puts "Date:\n #{info.get_date}"
            puts "Content: \n #{info.get_content}"
        end 
    end 
end 
    
    
class BlogPost < Blog
    
    def self.start
        info = new
        puts "Title your blog post:" 
        info.set_title = gets.chomp
        puts "Your Name:" 
        info.set_author = gets.chomp
        puts "Your Content:"
        info.set_content = gets.chomp
        info.set_date = Time.now
        info.save
        puts "Do you want to create another post? [Y/N]"
        start if gets.chomp.downcase == 'y'
    end
        
        
    def set_title=(title)
        @title=title
    end
    
    def get_title
        return @title
    end
    
    def set_content=(content)
        @content=content
    end
    
    def get_content
        return @content
    end
    
    def set_date=(set_date)
        @set_date=set_date
    end
    
    def get_date
        return @set_date
    end 
    
    def set_author=(author)
        @author=author
    end
    
    def get_author
        return @author
    end 
    
    def save
        BlogPost.count(self)
    end
end 
    
BlogPost.start
all_posts = BlogPost.posts
BlogPost.publish
    