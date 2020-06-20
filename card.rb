class Card
  attr_accessor :type

  @shinanogawa_game_win = 0
  @rubyji_game_win = 0

  def initialize(type1,type2,type3)
    @shinanogawa_cards = [type1]
    @citizen = type2
    @rubyji_cards = [type3]
    4.times do
      @shinanogawa_cards << @citizen
    end
    @@shinanogawa_cards = @shinanogawa_cards.shuffle
    4.times do
      @rubyji_cards << @citizen
    end
    @@rubyji_cards = @rubyji_cards.reverse
    @@n = 0
  end

  def self.debug
    puts "　現在デバックモードを使用しています。"
    puts "　信濃川のカードは次の順番で出てきます。"
    puts @@shinanogawa_cards
    puts "　ルビジのカードは"
    puts @@rubyji_cards
    puts "-"*110
  end

  def self.choice
    @@shinanogawa_hands = @@shinanogawa_cards.first
    @@shinanogawa_cards.shift
    while true do
      @choice = gets.chomp.to_i
      if @choice == 1
        puts "　貴方の選択は #{@choice} です。"
        @@rubyji_hands = @@rubyji_cards.first
        @@rubyji_cards.shift
        break
      elsif @choice == 2
        puts "　貴方の選択は #{@choice} です。"
        @@rubyji_hands = @@rubyji_cards.last
        @@rubyji_cards.pop
        break
      else
        puts "　正しい値を入力してください。"
        new_line
      end
    end
  end

  def self.shinanogawa_show
    puts " #{@@shinanogawa_hands}！"
  end

  def self.rubyji_show
    puts " #{@@rubyji_hands}！"
  end

  def self.judge
    @@n += 1
    if @@shinanogawa_hands == @@rubyji_hands && @@n == 4
      puts "　引き分け！！"
      puts "　最終ターンのカードは信濃川「皇帝」、ルビジ「奴隷」なのでこのゲームは貴方の勝ちです！！！"
      @rubyji_game_win += 1
      break
    elsif @@shinanogawa_hands == @@rubyji_hands
      puts "　引き分け！！"
    elsif @@shinanogawa_hands == "「市民」" && @@rubyji_hands == "「奴隷」"
      puts "　このゲームは貴方の負けです。"
      @shinanogawa_game_win += 1
    elsif @@shinanogawa_hands == "「皇帝」" && @@rubyji_hands == "「市民」"
      puts "　このゲームは貴方の負けです。"
      @shinanogawa_game_win += 1
    elsif @@shinanogawa_hands == "「皇帝」" && @@rubyji_hands == "「奴隷」"
      puts "　このゲームは貴方の勝ちです！！！"
      @rubyji_game_win += 1
    else
      puts "　ここを通過したらバグです。"
    end
  end

  def self.game_win
    if @rubyji_game_win == 2
      # eカード勝利で終了へ
    end
  end

  def self.game_lose
    if @shinanogawa_game_win == 2
      # eカード敗北で終了へ
    end
  end
end
