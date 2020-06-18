require './player'
require './card'

def explain_situation
  puts "-"*110
  puts <<~text
  　貴方の名前は#{@rubyji}。
  　#{@rubyji}は今夢の中にいます、とても悪い夢です。
  　#{@rubyji}の目の前には#{@shinanogawa}がいて、#{@shinanogawa}とeカードで勝負しなければなりません。
  　eカードで#{@shinanogawa}に勝てば#{@rubyji}は1億ベリカ貰えますが、負ければ#{@rubyji}は地下強制労働1050年を課せられます。
  　とても理不尽ですが、誰かに助けを求める事はできません。
  text
  puts "-"*110
  puts <<~text
  　#{@shinanogawa}「では始めよう。」
  　#{@rubyji}「自分を救うのは…自分だけ…！」
  text
  puts "-"*110
end

def explain_rule
  puts <<~text
  　eカードのルールを説明します。
  　登場するカードは3種類のみ、「皇帝」「市民」「奴隷」です。
  　#{@shinanogawa}のカードは「皇帝」が1枚「市民」が4枚、#{@rubyji}のカードは「市民」が4枚「奴隷」が1枚です。
  　カードの種類によらず全てのカードの裏面は同じ模様であり、裏面からどの種類のカードかを判断する事はできません。
  　ゲームはターン制で、1ターン毎にお互い1枚ずつカードを出して戦います。
  　1度使用したカードをもう1度使う事はできません。
  　カードの勝敗は次の通りです。
  　「皇帝」は「市民」に勝ち、「市民」は「奴隷」に勝ち、「奴隷」は「皇帝」に勝ちます。
  　ただし「市民」と「市民」は引き分けになります。
  　全てのカードを出し終えた時、勝った回数の多かった方がゲームの勝利となります。
  　2ゲーム先取した方が、eカードの勝者となります。
  　#{@shinanogawa}がどのカードを選ぶのか、#{@rubyji}は推測しなければなりません。
  　圧倒的に#{@rubyji}の方が不利ですが、#{@rubyji}は1度だけイカサマを使うことができます。
  　イカサマを使った場合の効果はランダムです。何が起こるか分かりません。
  　#{@rubyji}にとって悪い効果はありませんが、良い効果もあればいまひとつな効果もあります。
  text
end

explain_situation
explain_rule
@shinanogawa_cards.each do |card|
  puts card.type
end
puts "----"
@rubyji_cards.each do |card|
  puts card.type
end
exit