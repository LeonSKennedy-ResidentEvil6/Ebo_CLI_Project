class NewsFeedProject::ApiService

        @@url = 'http://newsapi.org/v2/everything?'\
        'qinTitle='

        @@parameters = '&sortBy=publishedAt&language=en&pageSize=10&apiKey='

        @@api_key = 'f5ab1ac1a2af4fa98ad39c97e7e4bf34'

    def self.search_news_by_article_title(query)
        # using restclient to parse and convert api response to jason format
        full_query = @@url + query + @@parameters + @@api_key
        response = RestClient.get(full_query)
        json = JSON.parse(response)
        json["articles"].each do |articles_hash|
            NewsFeedProject::Article.new(articles_hash)
        end 
    end 

end 