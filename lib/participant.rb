class Participant
  attr_reader :name
  attr_accessor :deck

  def initialize(args)
    @name = args[:name]
  end
end
