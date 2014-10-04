class Card

  attr_accessor :suit, :value

  def initialize(suit, value)
    @value = value
    @suit = suit
  end

  def to_s
    p "Your card is #{@value}-#{@suit}"
  end

  def face_card
    @value = 10 if ["Jack", "Queen", "King"].include? @value
    @value = 11 if @value == "Ace"
    return @value
  end
  def to_s
    p "The card is #{@value}-#{@suit}"
  end
end



class Deck

  @@cards = []

  def self.build_cards

    [:spade, :club, :diamond, :heart].each do |suit|
      (2..10).each do |value|
        @@cards << Card.new(suit, value)
      end
      ["Jack", "Queen", "King", "Ace"].each do |facecard|
        @@cards << Card.new(suit, facecard)
      end
    end

  end


  def self.deal_card
    @@cards.shuffle.shift
  end
end

class Hand

  def initialize(name)
    @name = name
    @card = []
  end

  def deal_card
    @card = Deck.deal_card

  end

  def value

  end
end

class Game
  attr_accessor :cards_player
  def initialize
    @player = Hand.new "Thanh"
    @dealer = Hand.new "Dealer"
    @cards_player = []
    @cards_dealer = []
    @cards_dealer1 = []
    @total = 0
    @first_dealer_card = []
    @total_dealer = 0
    @count = 0
  end

  def pass_card

    @cards_dealer1 = @dealer.deal_card
    @cards_dealer << @cards_dealer1
    p "Dealer first card is #{@cards_dealer1.value}-#{@cards_dealer1.suit}"
    p "**************************"

    @cards_player << @player.deal_card
    @cards_player << @player.deal_card

    @cards_player.each do |card|
      new_card = Card.new(card.suit, card.value)

      new_card.to_s
      new_card.face_card

      @total += new_card.value

    end
    if @total == 21
      p "YOU HAVE BLACKJACK"
      return
    end

    p "Your total is #{@total}"

    if @total == 22
      p "You busted. You loose"
      return
    end

    p "Do you want to hit(h) or stay(s)"
    user = gets.chomp

    p "********************************"

    until user == "s"
      card3 = @player.deal_card
      new_card = Card.new(card3.suit, card3.value)

        new_card.to_s
        new_card.face_card

        @total += new_card.value

        @count += 1

        if @total > 21
          p "You busted. You loose"
          return
        end

        p "Your total is #{@total}"

        p "Do you want to hit(h) or stay(s)"
        user = gets.chomp


    end

    funny_business if @count == 5 and @total < 21

    p "Your total is #{@total}"

    p "************************"

    # Start dealing cards for dealer

    @cards_dealer << @dealer.deal_card
    @cards_dealer.each do |card|
        new_card = Card.new(card.suit, card.value)

        new_card.to_s
        new_card.face_card

        @total_dealer += new_card.value
      end

      until @total_dealer > 16

        card6 = @dealer.deal_card
        new_card = Card.new(card6.suit, card6.value)
        new_card.face_card

        @total_dealer += new_card.value

        if @total_dealer > 21
          p "Dealer next card is #{new_card.value}-#{new_card.suit}"
          p "Dealer total is #{@total_dealer}"
          p "You win. Dealer loose"
          return
        end

        p "Dealer next card is #{new_card.value}-#{new_card.suit}"

      end
      p "*******************************"
      p "Dealer total is #{@total_dealer}"

      #Keep getting card if player and dealer draw

      if @total == @total_dealer
        p "****************************"
        p "You and dealer draw so you have to hit one more card"
        
        card4 = @player.deal_card
        new_card = Card.new(card4.suit, card4.value)

          new_card.to_s
          new_card.face_card

          @total += new_card.value

          @count += 1

          if @total > 21
            p "You busted. You loose"
            return
          end
          p "Your total is #{@total}"

          funny_business if @count == 5 and @total < 21
      end

      if @total > @total_dealer
        p "You win. Dealer Loose"

      elsif @total < @total_dealer
        p "You loose. Dealer win"
      end
  end

  def funny_bussiness
    p "You win a funny bussiness"
  end


end

Deck.build_cards

Deck.deal_card
game = Game.new
#thanh = Hand.new "Thanh"
#dealer = Hand.new "Dealer"
#thanh.deal_card
#dealer.deal_card
#
game.pass_card
