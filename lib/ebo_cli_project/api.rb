class EboCliProject::API

    def self.get_top_headlines
        headlines = RestClient.get('f5ab1ac1a2af4fa98ad39c97e7e4bf34')
        @headlines = JSON.parse(headlines)
        @headlines.each do |headline|
            EboCliProject::HEADLINES.news_from_api(headline)
        end 
    end 

end 