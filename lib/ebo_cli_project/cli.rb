class NewsFeedProject::Cli
  
    def start
        puts "welcome to your news search app!"
        menu
    end 

    def menu
        
        puts "----------------------------------"
        puts "what would you like to do?"
        puts "type 'help' for a list of commands"
        puts "----------------------------------"
        
        input = ''
        
        while input != 'exit' do

          input = gets.strip
          case input 
          when "help"
            help
          when "search"
            search_article
          when "list articles"
            list_articles
          when "num"
            open_article
          when "numUrl"
            open_article_by_url
          when "clear"
            clear_articles
          end 
        end 
      end 

      #method

        def search_article
          puts "type a keyword to search: "
          keyword = gets.strip
          NewsFeedProject::ApiService.search_news_by_article_title(keyword)
        end 
            
        def list_articles
          NewsFeedProject::Article.all.each.with_index(1) do |articles, index|
            index_plus = index + 1
            puts "#{index_plus}. #{articles.title}"
          end 
        end 
              

        def open_article
          article = NewsFeedProject::Article.select_article_by_index(input)
          puts "Source: #{article.content}"
          puts "Author: #{article.author}"
          puts "Title: #{article.title}"
          puts "Description: #{article.description}"
          puts "url: #{article.url}"
          puts "Image: #{article.urlToImage}"
          puts "Published Date: #{article.publishedAt}"
          puts "content: #{article.content}"
        end 

        def open_publisher
          NewsFeedProject::Article.open_publisher(num)
        end 

        def clear_articles
          NewsFeedProject::Article.clear
        end 

      def help
        puts "To search news, enter 'search'."
        puts "To list all articles, enter 'list article'."
        puts "To read an article, enter a number."
        puts "To open an article from the publisher's website, enter 'open' follow by a number"
        puts "To clear search result, enter 'clear'."
        puts "To exit the app, enter 'exit'."
      end 
       
  
end 