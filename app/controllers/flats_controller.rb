require "open-uri"

class FlatsController < ApplicationController
  # this action is linked to the root url ('/')
  def index
    # fetch data from api
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json_text = open(url).read
    # parse JSON and save in instance variable so view has acces to it
    @flats = JSON.parse(json_text)
    # rails will automatically render the html file located at views/flats/index.html.erb
  end


  # this action is linked to urls like /flats/:id
  # for example /flats/145
  def show
    # fetch data from api
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    json_text = open(url).read
    # parse JSON
    flats = JSON.parse(json_text)
    # find the flat with the url provided by url and save to instance variable
    @flat = @flats.find { |flat| params["id"].to_i == flat["id"] }
  end
end
