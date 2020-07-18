class Card
  attr_reader :name, :type

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
  end
end
