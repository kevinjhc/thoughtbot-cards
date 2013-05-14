class Deck < ActiveRecord::Base
  has_many :cards

  # def cards
  #   Card.where(deck_id: id)
  # end

  # def cards=(cards)
  #   Card.where(deck_id: id).update(deck_id: nil)
  #   Card.where(id: cards).update(deck_id: id)
  # end

end