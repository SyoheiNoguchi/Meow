# frozen_string_literal: true

class Card::CardComponent < ViewComponent::Base
  def initialize(card:, path:)
    @card = card
    @path = path
  end
end
