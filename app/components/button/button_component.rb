# frozen_string_literal: true

class Button::ButtonComponent < ViewComponent::Base
  
  def initialize(label: 'label', disabled: false, outlined: false, type: nil, html_options: nil)
    @label = label
    @disabled = disabled
    @outlined = outlined
    @type = type
    @html_options = html_options
  end

end
