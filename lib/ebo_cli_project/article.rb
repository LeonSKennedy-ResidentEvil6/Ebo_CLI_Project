class NewsFeedProject::Article
    
    attr_accessor :author, :content, :source, :name, :title, :description, :url, :urltoimage, :publishedAt

    @@all = []

    def initialize(articles_hash)
        articles_hash.each do |key, value|
            # return false if attribute is nil
            if self.respond_to?(key)
            self.send("#{key}=", value)
            end 
            binding.pry
        end 
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def self.clear
        @@all = []
    end 

    def self.list_articles
        NewsFeedProject::Article.all.each.with_index(1) do |article, index|
            puts "#{index}. #{article.title}"
        end 
    end 

    def self.select_article_by_index(num)
        NewsFeedProject::Article.all[num.to_i - 1]

    end 

    def self.open_publisher(num)
        NewsFeedProject::Article.all.each.with_index(1) do |article, index|
            if num.to_i - 1 == index
                article.url
            end 
        end 
    end 

end 