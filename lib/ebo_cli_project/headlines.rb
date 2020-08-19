class EboCliProject::HEADLINES
    attr_accessor :headlines
    
    def self.news_from_api(headline)
        headline.each do |key, value|
            self.new(
                key,
                value
            )
            headline
        )
    end 

    def initialize(headline=nil, news_url=[])
        @headline = headline
        @news_url = news_url
        binding.pry
    end 

end 