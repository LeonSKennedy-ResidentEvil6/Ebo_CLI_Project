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
          when "clear"
            clear_articles
          else 
            puts "invalid input. please enter again."
          end 
        end 
      end 

      #method

        def search_article
          puts "type a keyword to search: "
          keyword = gets.strip
          NewsFeedProject::ApiService.search_news_by_article_title(keyword)
          
          puts "To list the articles by title, enter 'list title'."
          puts "To list the articles by author, enter 'list author'."
          puts "To list the articles by description, enter 'list description'."
          puts "To search again, enter 'clear'."
          
          input = ''
          while input != 'exit' do
            input = gets.strip
            case input 
            when "list title"
              list_articles_by_title
            when "list author"
              list_articles_by_author
            when "list description"
              list_articles_by_description
            when "clear"
              clear_articles
            else 
              "invaid input. Please enter again: "
            end 
          end 
        end 
            
        def list_articles_by_title
          NewsFeedProject::Article.all.each.with_index(1) do |a, i|
            puts "#{i}. #{a.title}"
          end 
        end 

        def list_articles_by_author
          NewsFeedProject::Article.all.each.with_index(1) do |a, i|
            puts "#{i}. #{a.author}"
          end 
        end 

        def list_articles_by_description
          NewsFeedProject::Article.all.each.with_index(1) do |a, i|
            puts "#{i}. #{a.description}"
          end 
        end 

        def clear_articles
          NewsFeedProject::Article.clear
        end

        def open_article(num)
          NewsFeedProject::Article.all[num.to_i - 1]
        end 

        def open_publisher(num)
          NewsFeedProject::Article.all.each.with_index(1) do |article, index|
              if num.to_i - 1 == index
                  article.url
              end 
          end 
        end 

      def help
        puts "To search news, enter 'search'."
        puts "To read an article, enter a number."
        puts "To open an article from the publisher's website, enter 'open' follow by a number"
        puts "To clear search result, enter 'clear'."
        puts "To exit the app, enter 'exit'."
      end 
       
  
end 