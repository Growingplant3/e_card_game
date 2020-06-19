require './player'
require './card'
require './round'
require './explain'

explain_situation
explain_rule
puts "aaaaaaa"
# 1回目は@current_positionの中身は"nil"
Round.current_position
puts "bbbbbbb"
Round.turn_pass
# クラス変数はarrayで、中身が11個、1つ減った
puts "cccccccc"
# 2回目はturn_passメソッドを通過したので、@current_positionの中身は"1"
Round.current_position
puts "dddddddd"
Round.turn_pass
# クラス変数はarrayで、中身が10個、2つ減った
puts "eeeeeeee"
# 3回目はturn_passメソッドを通過したので、@current_positionの中身は"1"から"2"に変わっている
Round.current_position
exit