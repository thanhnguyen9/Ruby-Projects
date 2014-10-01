

class Cards

  attr_accessor :players, :card_value

  @@compare = []

  def initialize
    @players = []
    @card_value = 0
  end

  def add_player(name)
    @players << name
  end

  def get_cards(player)

     @players.each do |player|
       if player.name == "Dealer"

          card1 = rand(2..11)
          card2 = rand(2..11)
          suit1 = ["diamond", "club", "spade", "heart"].sample
          suit2 =  ["diamond", "club", "spade", "heart"].sample

          player.card_value = card1 + card2
          p "**********************************************"
          p "#{player.name}'s first card is #{card1} #{suit1}"
          p "#{player.name}'s second car is #{card2} #{suit2}"

          p "Do you want to hit or stay, hit h for hit, s for stay"

          user = gets.chomp

          until user == "s"
            card3 = rand(2..11)
            suit3 =  ["diamond", "club", "spade", "heart"].sample

            player.card_value += card3
            p player.card_value
            break if player.card_value >= 16
            p "#{player.name}'s card is #{card3} #{suit3}, and your total is #{player.card_value}"
            p "Do you want to hit or stay, hit h for hit, s for stay"
            user = gets.chomp
          end
          p "You are busted" if player.card_value > 21
          p "Your #{player.name} is #{player.card_value}"
          @@compare << player.card_value
        else
          card1 = rand(2..11)
          card2 = rand(2..11)
          suit1 = ["diamond", "club", "spade", "heart"].sample
          suit2 =  ["diamond", "club", "spade", "heart"].sample

          player.card_value = card1 + card2
          p "**********************************************"
          p "#{player.name}'s first card is #{card1} #{suit1}"
          p "#{player.name}'s second car is #{card2} #{suit2}"

          p "Do you want to hit or stay, hit h for hit, s for stay"

          user = gets.chomp

          until user == "s"
            card3 = rand(2..11)
            suit3 =  ["diamond", "club", "spade", "heart"].sample

            player.card_value += card3
            break if player.card_value > 21
            p "#{player.name}'s card is #{card3} #{suit3}, and your total is #{player.card_value}"
            p "Do you want to hit or stay, hit h for hit, s for stay"
            user = gets.chomp
          end
          p "You are busted" if player.card_value > 21
          p "Your total is #{player.card_value}"

        end
     end
  end

  def who_win?

    p "*****************************"
    @players.each do |player|
      next if player.name == "Dealer"
      p "You win" if player.card_value > @@compare[0]
      p "You lost" if player.card_value < @@compare[0]
    end

  end

end

class Player
  attr_accessor :name, :card_value

  def initialize(name)
    @name = name
    @card_value = 0
    p "Welcome to the game #{@name}"
  end
end

class Dealer
  attr_accessor :name, :card_value

  def initialize(name)
    @name = name
    @card_value = 0
    p "Its a pleasure to play with you"
  end

end

thanh = Player.new "Thanh"
dealer = Dealer.new "Dealer"
card = Cards.new

card.add_player(thanh)
card.add_player(dealer)

#card.get_cards(thanh)
card.get_cards(dealer)

card.who_win?
