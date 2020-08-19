require_relative "../lib/ebo_cli_project/api"
require_relative "../lib/ebo_cli_project/cli"
require_relative "../lib/ebo_cli_project/everything"
require_relative "../lib/ebo_cli_project/headlines"
require_relative "../lib/ebo_cli_project/sources"
require_relative "../lib/ebo_cli_project/version"


require 'pry'
require 'rest-client'
require 'json'

module EboCliProject
  class Error < StandardError; end
  # Your code goes here...
end
