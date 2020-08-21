class NewsCliProject::Article
    
    attr_accessor :source, :author, :title, :description, :url, :urltoimage, :publishedAt, :content

    @@all = []

    def initialize(article)
        article.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?(k)
        end 
        @@all << self
    end 

    def update(article)
        article.each do |k, v|
            # if attr_accessor does not have property, returns error
            self.send("#{k}=", v) if self.respond_to?(k)
        end 
    end 

    def self.all
        @@all 
    end 


end 