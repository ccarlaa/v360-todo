class ButtonPreview < ViewComponent::Preview

  def default
    render(Button::ButtonComponent.new(label: 'label'))
  end

  def primary_disabled
    render(Button::ButtonComponent.new(label: 'label', disabled: true))
  end

  def outlined
    render(Button::ButtonComponent.new(label: 'label', outlined: true))
  end

  def outlined_disabled
    render(Button::ButtonComponent.new(label: 'label', outlined: true, disabled: true))
  end

end
