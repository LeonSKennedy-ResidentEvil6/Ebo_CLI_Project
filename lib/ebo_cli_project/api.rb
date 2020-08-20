class EboCliProject::API

        require 'news-api'

        # Init
        newsapi = News.new("f5ab1ac1a2af4fa98ad39c97e7e4bf34")             

        # /v2/top-headlines
        top_headlines = newsapi.get_top_headlines(q: 'bitcoin',
                                                sources: 'bbc-news,the-verge',
                                                category: 'business',
                                                language: 'en',
                                                country: 'us')

        # /v2/everything
        all_articles = newsapi.get_everything(q: 'bitcoin',
                                            sources: 'bbc-news,the-verge',
                                            domains: 'bbc.co.uk,techcrunch.com',
                                            from: '2017-12-01',
                                            to: '2017-12-12',
                                            language: 'en',
                                            sortBy: 'relevancy',
                                            page: 2))

        # /v2/sources
        sources = newsapi.get_sources(country: 'us', language: 'en')
            end 

    def self.get_top_headlines
        headlines = RestClient.get('f5ab1ac1a2af4fa98ad39c97e7e4bf34')
        @headlines = JSON.parse(headlines)
        @headlines.each do |headline|
            EboCliProject::HEADLINES.news_from_api(headline)
        end 
    end 

end 