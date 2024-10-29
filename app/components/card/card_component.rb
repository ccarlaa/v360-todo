# frozen_string_literal: true

class Card::CardComponent < ViewComponent::Base

  def initialize(title: 'Título', items: [])
    @title = title
    @items = items
  end
end
