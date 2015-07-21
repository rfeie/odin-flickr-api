# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'flickraw'

FlickRaw.api_key = ENV["flickr_api_key"]
FlickRaw.shared_secret = ENV["flickr_secret_key"]
# Initialize the Rails application.
Rails.application.initialize!
