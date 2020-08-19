class EboCliProject::ClI
  
  def start
    puts "welcome to the news api!"
    EboCliProject::API.get_top_headlines
  end 

  def menu
    puts "please select the news you want to see"
    top_headlines
    everything
    sources
  end 

  def top_headlines
  end 

  def everything
  end 

  def sources
  end 
  
end 