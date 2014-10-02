

class Cards

  attr_accessor :players, :card_value

  @@compare = []
  @@cards = []

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

          cards = []

          cards << {
            value: 1,
            suit: "club"
          }

          cards << {
            value: 1,
            suit: "heart"
          }

          cards << {
            value: 1,
            suit: "diamond"
          }

          cards<< {
            value: 1,
            suit: "spade"
          }

          cards<< {
            value: 2,
            suit: "diamond"
          }

          cards<< {
            value: 2,
            suit: "club"
          }

          cards<< {
            value: 2,
            suit: "heart"
          }

          cards<< {
            value: 2,
            suit: "spade"
          }

          cards<< {
            value: 3,
            suit: "club"
          }

          cards<< {
            value: 3,
            suit: "diamond"
          }

          cards<< {
            value: 3,
            suit: "heart"
          }

          cards<< {
            value: 3,
            suit: "spade"
          }
          cards<< {
            value: 4,
            suit: "club"
          }
          cards<< {
            value: 4,
            suit: "diamond"
          }
          cards<< {
            value: 4,
            suit: "heart"
          }
          cards<< {
            value: 4,
            suit: "spade"
          }
          cards<< {
            value: 5,
            suit: "heart"
          }
          cards<< {
            value: 5,
            suit: "club"
          }
          cards<< {
            value: 5,
            suit: "diamond"
          }
          cards<< {
            value: 5,
            suit: "spade"
          }
          cards<< {
            value: 6,
            suit: "heart"
          }
          cards<< {
            value: 6,
            suit: "diamond"
          }
          cards<< {
            value: 6,
            suit: "club"
          }
          cards<< {
            value: 6,
            suit: "spade"
          }
          cards<< {
            value: 7,
            suit: "heart"
          }
          cards<< {
            value: 7,
            suit: "diamond"
          }
          cards<< {
            value: 7,
            suit: "club"
          }
          cards<< {
            value: 7,
            suit: "spade"
          }
          cards<< {
            value: 8,
            suit: "heart"
          }
          cards<< {
            value: 8,
            suit: "diamond"
          }
          cards<< {
            value: 8,
            suit: "club"
          }
          cards<< {
            value: 8,
            suit: "spade"
          }

          cards<< {
            value: 9,
            suit: "heart"
          }
          cards<< {
            value: 9,
            suit: "diamond"
          }
          cards<< {
            value: 9,
            suit: "club"
          }
          cards<< {
            value: 9,
            suit: "spade"
          }
          cards<< {
            value: 10,
            suit: "heart"
          }
          cards<< {
            value: 10,
            suit: "diamond"
          }
          cards<< {
            value: 10,
            suit: "club"
          }
          cards<< {
            value: 10,
            suit: "spade"
          }
          card1 = []
          card2 = []

            card1 = cards.sample
            card2 = cards.sample
            @@cards << card1


            while @@cards.include? card2
              card2 = cards.sample
            end
            @@cards << card2

            player.card_value = card1[:value] + card2[:value]
          p "**********************************************"
          p "#{player.name}'s first card is #{card1[:value]} #{card1[:suit]}"
          p "#{player.name}'s second car is #{card2[:value]} #{card2[:suit]}"

          user = ""
          p player.card_value

          if player.card_value > 21
            loose()
            break
          end

           until player.card_value > 15

             card3 = cards.sample



              while @@cards.include? card3
               card3 = cards.sample
              end

             @@cards << card3


            player.card_value = player.card_value + card3[:value]

            if player.card_value > 21
              loose()
              break
            end
          end

          p "#{player.name} is #{player.card_value}"
          @@compare << player.card_value

        else


          card4 = []
          card5 = []

            card4 = cards.sample
            card5 = cards.sample
            @@cards << card4

            while result.include? card5
              card5 = card.sample
            end
            @@cards << card5


          player.card_value = card4[:value] + card5[:value]
          p "**********************************************"
          p "#{player.name}'s first card is #{card4[:value]} #{card4[:suit]}"
          p "#{player.name}'s second car is #{card5[:value]} #{card5[:suit]}"

          if player.card_value > 21
            loose()
            break
          end

          p "Do you want to hit or stay, hit h for hit, s for stay"

          user = gets.chomp

          until user == "s"
            card6 = cards.sample

            while result.include? card6
              card6 = cards.sample
            end
            @@cards << card6

            player.card_value += card6[:value]

            if player.card_value > 21
              loose()
              break
            end

            p "#{player.name}'s card is #{card6[:value]} #{card6[:suit]}, and your total is #{player.card_value}"
            p "Do you want to hit or stay, hit h for hit, s for stay"
            user = gets.chomp
          end

          p "Your total is #{player.card_value}"

        end
     end
  end

  def who_win?

    p "*****************************"
    @players.each do |player|
      next if player.name == "Dealer"

      break if @@compare[0] > 21
      break if player.card_value > 21

      if (@@compare[0] < player.card_value)
        p "You win. Dealer loose"

      elsif (@@compare[0] > player.card_value)
        p "You loose. Dealer win"
      elsif player.card_value == @@compare[0]
        p "You draw"
      end
    end

  end

  def loose
    p "You busted. You loose"
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

card.get_cards(thanh)
card.get_cards(dealer)

#card.who_win?
