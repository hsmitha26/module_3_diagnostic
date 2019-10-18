class House
  attr_reader :members,
              :name

  def initialize(members, name)
    @members = members.map do |member|
      Member.new(member)
    end

    @name = name
  end

end
