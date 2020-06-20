def new_line
  puts "-"*110
end

def explain_situation
  new_line
  puts <<~text
  　貴方の名前は#{@rubyji}。
  　#{@rubyji}は今夢の中にいます、とても悪い夢です。
  　#{@rubyji}の目の前には#{@shinanogawa}がいて、#{@shinanogawa}とeカードで勝負しなければなりません。
  　eカードで#{@shinanogawa}に勝てば#{@rubyji}は1億ベリカ貰えますが、負ければ#{@rubyji}は地下強制労働1050年を課せられます。
  　とても理不尽ですが、誰かに助けを求める事はできません。
  text
  new_line
  puts <<~text
  　#{@shinanogawa}「では始めよう。」
  　#{@rubyji}「自分を救うのは…自分だけ…！」
  text
  new_line
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
  text
  new_line
end

def get_ready
  while true do
    puts "　#{@shinanogawa}「#{@rubyji}くん、準備はいいか？」[y/n]"
    new_line
    ready = gets.chomp
    if ready == "y"
      puts "　#{@shinanogawa}「では始めよう。」"
      puts "　#{@rubyji}「やるしかねぇ！」"
      break
    elsif ready == "n"
      puts "　#{@shinanogawa}「もう一度ルール確認だな。」"
      new_line
      explain_rule
    else
      puts "　正しい値を入力してください。"
      new_line
    end
  end
end

def match_begin
  count = Count.new([6,7,8,9,11,12,13,14,16,17,18,19].to_a)
  fake = 1
  while true do
    card = Card.new("「皇帝」","「市民」","「奴隷」")
    while true do
      count.turn_pass
      if count.get_position == nil
        break
      elsif count.get_position < 20
        rubyji_action = nil
        new_line
        puts "　第#{count.get_position/5}ゲームの#{count.get_position%5}ターン目です。"
        puts "　#{@shinanogawa}「ではこのカードで勝負しよう。」"
        new_line
        puts <<~text
        　#{@shinanogawa}のカードは、「皇帝」が1枚、「市民」が#{5 - count.get_position%5}枚です。
        　#{@rubyji}のカードは、「奴隷」が1枚、「市民が」#{5 - count.get_position%5}枚です。
        　#{@rubyji}の番です、次の選択肢の中から行動を決めてください。
        text
        puts "　1:「市民」のカードを出す　2:「奴隷」のカードを出す"
        new_line
        Card.debug
        Card.choice
        new_line
        puts <<~text
        　　　　　　　　　　　　　＼＿丶丶　|
        　　　　　　　　　　　　　￣＼　　 ￣|／⌒|
        　　　　　　　　　　　　　⊂二　 　 ./|　 J　．．．．．．
        　
        　　＼＿丶丶　|
        　　￣＼　　 ￣|／⌒|
        　　⊂二　 　 ./|　 J　．．．．．．
        text
        new_line
        sleep(3)
        puts "　#{@shinanogawa}のカードは"
        Card.shinanogawa_show
        puts "　#{@rubyji}のカードは"
        Card.rubyji_show
        Card.judge
        new_line
        Card.game_win
        Card.game_lose
        # 勝敗が決したらゲーム開始のループに戻したい。


        # puts "　ここに結果の状況を書く,分岐⓪引き分けならネクストターンへ①4ターン目なら5ターン目なしで勝敗をつけてネクストゲームへ"
        # puts "　②勝敗ついたらネクストゲームへ③eカードが勝利で終わったら④eカードが敗北で終わったら"
      end
    end
  end
end
