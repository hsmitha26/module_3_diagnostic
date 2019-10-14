class SearchController < ApplicationController
  def index
    @house = MemberFacade.new(params[:house]).member_house

    url = "https://www.potterapi.com/v1/characters?key=#{ENV['potter_api_key']}"
    conn = Faraday.get(url, house: "#{@house}", "orderOfThePhoenix": true)
    @response = JSON.parse(conn.body)
  end
end
