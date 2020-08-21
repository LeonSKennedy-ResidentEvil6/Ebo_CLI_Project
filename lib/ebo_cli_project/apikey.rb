class NewsCliProject::ApiKey

    def api_validate

        def fetch
            apikey = "f5ab1ac1a2af4fa98ad39c97e7e4bf34"

            url = 'https://newsapi.org/v2/everything?'\
            "q()&"\
            "apiKey=#{key}&"\
            "pageSize=50"

        end 
    end 
end 