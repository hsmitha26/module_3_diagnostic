class SearchController < ApplicationController
  def index
    key = ENV['potter_api_key']
    @house = params[:house]
    url = "https://www.potterapi.com/v1/characters?key=#{key}"
    conn = Faraday.get(url, house: "#{@house}", "orderOfThePhoenix": true)
    @response = JSON.parse(conn.body)
  end
end
