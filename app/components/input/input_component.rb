# frozen_string_literal: true

class Input::InputComponent < ViewComponent::Base
  def initialize(label: nil, name:, type: 'text', value: '', placeholder: '', required: false, disabled: false)
    @label = label
    @name = name
    @type = type
    @value = value
    @placeholder = placeholder
    @required = required
    @disabled = disabled
  end
end
