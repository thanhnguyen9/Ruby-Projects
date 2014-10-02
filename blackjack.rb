

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

    cards = []

    cards << {
      value: 11,
      suit: "club"
    }

    cards << {
      value: 11,
      suit: "heart"
    }

    cards << {
      value: 11,
      suit: "diamond"
    }

    cards<< {
      value: 11,
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
    cards<< {
      value: "Jack",
      suit: "diamond"
    }
    cards<< {
      value: "Jack",
      suit: "club"
    }
    cards<< {
      value: "Jack",
      suit: "heart"
    }
    cards<< {
      value: "Jack",
      suit: "spade"
    }
    cards<< {
      value: "Queen",
      suit: "heart"
    }
    cards<< {
      value: "Queen",
      suit: "diamond"
    }
    cards<< {
      value: "Queen",
      suit: "club"
    }
    cards<< {
      value: "Queen",
      suit: "spade"
    }
    cards<< {
      value: "King",
      suit: "club"
    }
    cards<< {
      value: "King",
      suit: "diamond"
    }
    cards<< {
      value: "King",
      suit: "heart"
    }
    cards<< {
      value: "King",
      suit: "spade"
    }

     @players.each do |player|

       if player.name == "Dealer"

          card1 = []
          card2 = []

            card1 = cards.sample
            card2 = cards.sample



            @@cards << card1


            while @@cards.include? card2
              card2 = cards.sample
            end

            @@cards << card2




          p "**********************************************"
          if card1[:value] == 11
            p "#{player.name}'s fist card is ace #{card1[:suit]}"
          else
            p "#{player.name}'s first card is #{card1[:value]} #{card1[:suit]}"
          end
          if card2[:value] == 11
            p "#{player.name}'s second card is ace #{card2[:suit]}"
          else
            p "#{player.name}'s second car is #{card2[:value]} #{card2[:suit]}"
          end

          card1[:value] = 10 if (card1[:value] == "Jack") || (card1[:value] == "Queen") || (card1[:value] == "King")
          card2[:value] = 10 if (card2[:value] == "Jack") || (card2[:value] == "Queen") || (card2[:value] == "King")

          auto_win() if (card1[:value] == 11 && card2[:value] == 10) || (card1[:value] == 10 && card2[:value] == 11)

          player.card_value = card1[:value] + card2[:value]

          user = ""

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

             if card3[:value] == 11
               p "#{player.name}'s next card is ace #{card3[:suit]}"
             else
               p "#{player.name}'s next card is #{card3[:value]} #{card3[:suit]}"
             end

             card3[:value] = 10 if (card3[:value] == "Jack") || (card3[:value] == "Queen") || (card3[:value] == "King")

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

            count = 2
            @@cards << card4

            while @@cards.include? card5
              card5 = card.sample
            end
            @@cards << card5



          p "**********************************************"

          if card4[:value] == 11
            p "#{player.name}'s first card is ace #{card4[:suit]}"
          else
            p "#{player.name}'s first card is #{card4[:value]} #{card4[:suit]}"
          end

          if card5[:value] == 11
            p "#{player.name}'s second card is ace #{card5[:suit]}"
          else
            p "#{player.name}'s second card is #{card5[:value]} #{card5[:suit]}"
          end

          card4[:value] = 10 if (card4[:value] == "Jack") || (card4[:value] == "Queen") || (card4[:value] == "King")
          card5[:value] = 10 if (card5[:value] == "Jack") || (card5[:value] == "Queen") || (card5[:value] == "King")

          auto_win() if (card4[:value] == 11 && card5[:value] == 10) || (card4[:value] == 10 && card5[:value] == 11)

          player.card_value = card4[:value] + card5[:value]

          p "#{player.name} total is #{player.card_value}"

          if player.card_value > 21
            loose()
            break
          end

          p "Do you want to hit or stay, hit h for hit, s for stay"

          user = gets.chomp

          until user == "s"
            card6 = cards.sample

            while @@cards.include? card6
              card6 = cards.sample
            end

            @@cards << card6

            if card6[:value] == 11
              p "#{player.name}'s next card is ace #{card6[:suit]}"
            else
              p "#{player.name}'s next card is #{card6[:value]} #{card6[:suit]}"
            end

            card6[:value] = 10 if (card6[:value] == "Jack") || (card6[:value] == "Queen") || (card6[:value] == "King")

            count += 1
            player.card_value += card6[:value]

            break if player.card_value == 21

            if player.card_value > 21
              loose()
              break
            end

            p "#{player.name} total is #{player.card_value}"
            p "Do you want to hit or stay, hit h for hit, s for stay"
            user = gets.chomp
          end
          funny_business() if (count == 5) && (player.card_value < 21)
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

  def auto_win
    p "You got BLACKJACK"
  end

  def funny_business
    p "You win a funny business"
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
