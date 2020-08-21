class EboCliProject::Cli
  
    def start
        puts "welcome to your news search app!"
        menu
    end 

    def menu
        help
        input = ''

          while input != 'exit' do
              input = gets.strip

              puts ""
              puts "what news would you like to search for?"
              puts ""

              case input
              when "help"
                help 
              when "query"
                list_articles
              when "#{num}"
                select_article_by_index(num)
              when "openNum"
                find_open_article_url(num)
              end 
          end 
      end 

            EboCliProject::ApiService.search_news_by_article_title(input)
            # offset is set to 1 to skip first and second keys - status and totalResults
            EboCliProject::Article.all.each.with_index(2) do |articles, index|
              puts "#{index}. #{articles.title}"
            end 

            puts "which article would you like to read?"

            input = gets.strip
            # user query single artcile
            article = EboCliProject::Article.all[input.to_i - 1]

            EboCliProject::ApiService.open_news_article(article)

            puts "Article is opened : #{article.content}"

    end 

    def help
        puts "To search for any news headlines, enter a keyword."
        puts "To read an article, enter a number."
        puts "To open an article from the publisher's website, enter 'open' follow by a number"
        puts "To exit the app, enter 'exit'."
    end 

    
end 