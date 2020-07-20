class Match
  attr_accessor :turn

  def initialize(args)
    @turn = args[:turn]
  end

  def turn_pass
    @turn -= 1
  end
end