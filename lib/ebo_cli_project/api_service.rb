class NewsCliProject::ApiService

    
        base_url = 'https://newsapi.org/v2/everything?'
        api_key = 'f5ab1ac1a2af4fa98ad39c97e7e4bf34&pageSize=50'

    def self.search_news_by_article(query)
        response = RestClient.get("#{base_url}domains=cnn.com&apiKey=#{api_key}&pageSize=50"&q=#{query})
        json = JSON.parse(response)
        json["response"].each do |article_hash|
            NewsCliProject::Article.new(article_hash)
        end 
    end 

    def self.open_news_article(article)
        if !article.title
            response = RestClient.get("#{base_url}url=#{query}&apiKey=#{api_key}&pageSize=50")

            json = JSON.parse(response)
            article.update(json)
        end 
    end 


end 