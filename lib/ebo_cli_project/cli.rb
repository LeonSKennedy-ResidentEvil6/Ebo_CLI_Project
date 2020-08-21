class NewsCliProject::Cli
  
    def start
      
      puts "welcome to your news search app!"
      menu
    end 

    def menu

      puts ""
      puts "-----------------------------------------------"
      puts "what news would you like to search for?"
      puts "-----------------------------------------------"

      input = gets.strip

      NewsCliProject::ApiService.search_news_by_article(input)

      NewsCliProject::Article.all.each.with_index(1) do |article, index|
        puts "#{index}. #{article.title}"
      end 

      puts "which article would you like to read?"

      input = get.strip

      article = NewsCliProject::Article.all[input.to_i - 1]

      NewsCliProject::ApiService.open_news_article(article)

      puts "Article is opened : #{article.content}"

    end 

    
end 