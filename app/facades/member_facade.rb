class MemberFacade
  def initialize(house)
    @house = house
  end

  def member_house
    @house
  end

  def members_count
    # binding.pry
    # connection.count
  end

  def connection
    # url = "https://www.potterapi.com/v1/characters?key=#{ENV['potter_api_key']}"
    # conn = Faraday.get(url, house: "#{@house}", "orderOfThePhoenix": true)
    # response = JSON.parse(conn.body)
  end
end
