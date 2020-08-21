class EboCliProject::ApiService


        url = 'http://newsapi.org/v2/everything?'\
        'domains=cnn.com&'\
        'qinTitle=#{query}&'\
        'from=2020-08-21&'\
        'sortBy=popularity&'\
        'pageSize=10&'\
        'apiKey=#{api_key}'\

        api_key = 'f5ab1ac1a2af4fa98ad39c97e7e4bf34'

    def self.search_news_by_article_title(query)
        response = RestClient.get(url)
        json = JSON.parse(response)

        json["response"].each do |articles_hash|
            EboCliProject::Article.new(articles_hash)
        end 
    end 

end 