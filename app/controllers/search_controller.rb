class SearchController < ApplicationController
  def index
    # @house = House.find_by(name: params[:house])

    conn = Faraday.new(url: "https://www.potterapi.com/v1/")
    response = conn.get 'characters', {
      key: ENV["potter_api_key"],
      house: params[:house],
      orderOfThePhoenix: true
    }

    house_members = JSON.parse(response.body, symbolize_names: true)

    @house = House.new(house_members, params[:house])
  end
end
