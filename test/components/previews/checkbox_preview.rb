class CheckboxPreview < ViewComponent::Preview

  def default
    render(Checkbox::CheckboxComponent.new(checked: false))
  end
end
