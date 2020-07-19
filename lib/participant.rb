class Participant
  attr_accessor :name, :deck

  def initialize(args)
    @name = args[:name]
    @deck = args[:deck]
  end
end
