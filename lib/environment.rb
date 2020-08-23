require_relative "../lib/ebo_cli_project/version.rb"
require_relative "../lib/ebo_cli_project/api_service.rb"
require_relative "../lib/ebo_cli_project/article.rb"
require_relative "../lib/ebo_cli_project/cli.rb"

require 'pry'
require 'rest-client'
require 'json'
require 'news-api'


module NewsFeedProject
  class Error < StandardError; end
  # Your code goes here...
end
