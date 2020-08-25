class NewsFeedProject::Article
    
    attr_accessor :author, :content, :source, :name, :title, :description, :url, :urltoimage, :publishedAt

    @@all = []

    def initialize(articles_hash)
        articles_hash.each do |key, value|
            if self.respond_to?(key)
             self.send("#{key}=", value)
            end 
        end 
        @@all << self

    end 

    def self.all
        @@all 
    end 

    def self.clear
        @@all = []
    end 

end 