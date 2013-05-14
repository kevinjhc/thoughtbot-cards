class CardsController < ApplicationController

  def new
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.new
  end

  def create
    @deck = Deck.find(params[:deck_id])
    card = @deck.cards.create(card_params)
    redirect_to @deck
  end

  def edit
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    @card.update card_params
    redirect_to @deck
  end

  def destroy
    @deck = Deck.find(params[:deck_id])
    card = Card.find(params[:id])
    card.destroy
    redirect_to @deck
  end

  private

  def card_params
    params.require(:card).permit(:front, :back)
  end

end