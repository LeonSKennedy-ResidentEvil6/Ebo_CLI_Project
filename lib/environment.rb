require 'pry'
require 'rest-client'
require 'json'
require 'news-api'

require_relative "../lib/ebo_cli_project/api_service"
require_relative "../lib/ebo_cli_project/apikey"
require_relative "../lib/ebo_cli_project/article"
require_relative "../lib/ebo_cli_project/cli"
require_relative "../lib/ebo_cli_project/version"



module EboCliProject
  class Error < StandardError; end
  # Your code goes here...
end
