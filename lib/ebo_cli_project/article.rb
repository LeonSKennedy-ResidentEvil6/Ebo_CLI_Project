class EboCliProject::Article
    
    attr_accessor :source, :name, :author, :title, :description, :url, :urltoimage, :publishedAt, :content

    @@all = []

    def initialize(articles_hash)
        articles_hash.each do |key, value|
            # return false if attribute is nil/null in json
            if self.respond_to?(key)
            self.send("#{key}=", value)
            end 
        end 
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def self.list_articles
        EboCliProject::ApiService.all.each.with_index(1) do |article, index|
            puts "#{index}. #{article.title}"
        end 
    end 

    def self.select_article_by_index(num)
        EboCliProject::ApiService.all[num.to_i - 1]
    end 

    def self.find_open_article_url(num)
        EboCliProject::ApiService.all.each.with_index(1) do |article, index|
            if num.to_i - 1 == index
                article.url
            end 
        end 
    end 

end 