require 'rest-client'
require 'json'
require 'pry'

def api_call

  puts "Provide game title"
  game =gets.chomp

  #response will give me all the data for given game
  response = RestClient.get("https://www.giantbomb.com/api/search/?api_key=a26f1d3d0feef9d1adb3a185cc41fb7523921261&format=json&query=" + game+ "&resources=game",
              :headers =>{:content_type => :json, :Accept => "application/json", :'user-key' => "a3e18d0c5333492100deecf551dbb164"})
          # {Accept: "application/json", param: {"user-key" => a3e18d0c5333492100deecf551dbb164, "https://api-2445582011268.apicast.io/games/"}})
  root = JSON.parse(response)["results"][0]
  #relevant info

  overview = root["deck"]
  #specific to deck info

  game_response = Game.create(overview: overview, )
  #create new database entry using api


  binding.pry

  puts "h"


end
