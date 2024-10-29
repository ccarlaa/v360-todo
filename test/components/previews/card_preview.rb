class CardPreview < ViewComponent::Preview

  def default
    render(Card::CardComponent.new(title: 'Title'))
  end

end
