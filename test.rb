require 'pry'

class Card

  attr_accessor :value, :suit

  def initialize(suit, value)
    @value = value
    @suit = suit
  end

  def facecard
    return 10 if ["Jack", "Queen", "King"].include? @value
    return 11 if @value == "A"
    return @value
  end
  def to_s
    p "#{@value}-#{@suit}"
  end
end



class Deck

  @@cards = []

  def self.build_cards

    [:spade, :club, :diamond, :heart].each do |suit|
      (2..10).each do |value|
        @@cards << Card.new(suit, value)
      end
      [:Jack, :Queen, :King, :Ace].each do |facecard|
        @@cards << Card.new(suit, facecard)
      end
    end

  end


  def self.deal_card
    @@cards.shuffle.pop
  end
end

class Hand

  def initialize(name)
    @name = name
    @card = []
  end

  def deal_card
    @card = Deck.deal_card
    a = Card.new(@card.suit, @card.value)
    a.to_s
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
    @cards_player1 = []
    @cards_player2 = []

  end

  def pass_card
    cards_player1 = @player.deal_card
    cards_player2 = @player.deal_card


  end

end

Deck.build_cards

Deck.deal_card
game = Game.new
thanh = Hand.new "Thanh"
#dealer = Hand.new "Dealer"
#thanh.deal_card
#dealer.deal_card
#
 game.pass_card
