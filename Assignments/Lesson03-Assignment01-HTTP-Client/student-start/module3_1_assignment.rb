require 'httparty'
require 'pp'

class Recipe
 include HTTParty
 base_uri "http://food2fork.com/api"
 default_params key: ENV["c2b5d0ebe1a8da039c568bbf7a2153da"]
 format :json

 def self.for term
  get("/search/", query: {q: term})["elements"]
 end
end
