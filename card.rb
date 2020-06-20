class Card
  attr_accessor :type

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

  def self.choice
    @@shinanogawa_hands = @@shinanogawa_cards.first
    while true do
      @choice = gets.chomp.to_i
      if @choice == 1
        puts "　貴方の選択は #{@choice} です。"
        @@rubyji_hands = @@rubyji_cards.first
        break
      elsif @choice == 2
        puts "　貴方の選択は #{@choice} です。"
        @@rubyji_hands = @@rubyji_cards.last
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

  def self.draw
    @@shinanogawa_cards.shift
    @@rubyji_cards.shift
  end

  def self.judge
    @@n += 1
    if @@shinanogawa_hands == @@rubyji_hands && @@n == 4
      puts "　引き分け！！"
      puts "　最終ターンのカードは信濃川「皇帝」、ルビジ「奴隷」なのでこのゲームは貴方の勝ちです！！！"
      puts "　aaaaaaaaaaaaaa"
    elsif @@shinanogawa_hands == @@rubyji_hands
      puts "　引き分け！！"
      puts "　bbbbbbbbbbbbbb"
    elsif @@shinanogawa_hands == "「市民」" && @@rubyji_hands == "「奴隷」"
      puts "　このゲームは貴方の負けです。"
      puts "　ccccccccccccc"
    elsif @@shinanogawa_hands == "「皇帝」" && @@rubyji_hands == "「市民」"
      puts "　このゲームは貴方の負けです。"
      puts "　dddddddddddddddddd"
    elsif @@shinanogawa_cards == "「皇帝」" && @@rubyji_hands == "「奴隷」"
      puts "　このゲームは貴方の勝ちです！！！"
      puts "　eeeeeeeeeeeeeeeee"
    else
      puts "　fffffffffffff"
    end
  end
end