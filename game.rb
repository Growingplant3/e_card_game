require './player'
require './card'
require './round'
require './explain'

$current_position = nil
explain_situation
explain_rule
Round.turn_pass
exit