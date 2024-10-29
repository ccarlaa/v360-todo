class InputPreview < ViewComponent::Preview

  def default
    render(Input::InputComponent.new(label: 'label', name: :name))
  end

  def disabled
    render(Input::InputComponent.new(label: 'label', placeholder: 'placeholder', name: :name, disabled: true))
  end

end
