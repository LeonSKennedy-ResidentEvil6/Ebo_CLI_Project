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
            exit
          else 
            puts "invalid input. please enter again."
          end 
        end 
      end 

      #methods
        # search articles with entered keyword from user
        def search_article
          puts "type a keyword to search: "
          keyword = gets.strip
          NewsFeedProject::ApiService.search_news_by_article_title(keyword)
          menu
        end 
        # display list of articles in cli 
        def list_articles_by_title
          NewsFeedProject::Article.all.each.with_index(1) do |a, i|
            puts "#{i}. #{a.title}"
          end 
          menu
        end 
        # open an article along with attributes
        def open_article

            puts "enter an number of an article to open: "
            num = gets.strip
            article = NewsFeedProject::Article.all[num.to_i - 1]
            puts "#{article.title}"
            puts "Content: #{article.content}"
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
                elsif input == "quit"
                  exit
                else
                  puts "invalid input. Please enter again"
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