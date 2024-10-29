# frozen_string_literal: true

class Checkbox::CheckboxComponent < ViewComponent::Base
  def initialize(checked: false, name: 'nome')
    @checked = checked
    @name = name
  end
end
