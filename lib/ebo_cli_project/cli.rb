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
          when "list articles"
            list_articles_by_title
          when "open an article"
            open_article
          when "quit"
            input == "exit"
          else 
            puts "invalid input. please enter again."
          end 
        end 
      end 

      #methods

        def search_article
          puts "type a keyword to search: "
          keyword = gets.strip
          NewsFeedProject::ApiService.search_news_by_article_title(keyword)
          menu
        end 
            
        def list_articles_by_title
          NewsFeedProject::Article.all.each.with_index(1) do |a, i|
            puts "#{i}. #{a.title}"
          end 
          menu
        end 

        def open_article

            puts "enter an number of an article to open: "
            num = gets.strip
            article = NewsFeedProject::Article.all[num.to_i - 1]
            puts "#{article.title}"
            puts "Description: #{article.description}"
            puts "#{article.content}"
            puts "Author: #{article.author}"
            puts "Published Date: #{article.publishedAt}"
            puts "Publisher URL: #{article.url}"

            puts "End of the article. What would you like to do next? "
            puts "To open the publisher's URL, enter 'open publisher'."
            puts "To go back to menu, enter 'menu'."
            puts "To exit the app, enter 'quit'."

            input = ''

            while input != "exit" do
                input = gets.chomp.strip
                if input == "open publisher"
                  puts "The publisher's website is opened in your browser."
                  system("open", "#{article.url}")
                elsif input == "menu"
                  menu
                elsif input == "exit"
                else
                  "invalid input. Please enter again"
                end
             end 
         end 

        def clear_articles
          NewsFeedProject::Article.clear
          puts "result has been cleared."
          menu
        end

      def help
        puts "To search news, enter 'search'."
        puts "To clear search result, enter 'clear'."
        puts "To view list of articles, enter 'list articles'."
        puts "To see article detail, enter 'open an article'."
        puts "To exit the app, enter 'quit'."
      end 
       
  
end 