

class Player

  attr_accessor :name

  def initialize(name)
    @name = name
    p "Welcome to the game #{@name}"
  end

  def play
    card1 = rand(1..11)
    card2 = rand(1..11)
    suit1 = ["diamond", "club", "spade", "heart"].sample
    suit2 =  ["diamond", "club", "spade", "heart"].sample


    total = card1 + card2

    p "Your first card is #{card1} #{suit1}"
    p "Your second car is #{card2} #{suit2}"

    p "Do you want to hit or stay, hit h for hit, s for stay"

    user = gets.chomp

    until user == "s"
      card3 = rand(1..11)
      suit3 =  ["diamond", "club", "spade", "heart"].sample

      total += card3
      break if total > 21
      p "Your card is #{card3} #{suit3}, and your total is #{total}"
      p "Do you want to hit or stay, hit h for hit, s for stay"
      user = gets.chomp
    end
    p "You are busted" if total > 21
    p "Your total is #{total}"

end

class Dealer

end


thanh = Card.new "Thanh"
p "********************"
thanh.play
