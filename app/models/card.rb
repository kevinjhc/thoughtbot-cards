class Card < ActiveRecord::Base
  belongs_to :deck

  # def deck
  #   Deck.find(deck_id)
  # end

  # def deck=(deck)
  #   self.deck_id = deck.id
  # end
  
end