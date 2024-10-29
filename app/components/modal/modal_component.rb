# frozen_string_literal: true

class Modal::ModalComponent < ViewComponent::Base
  renders_one :body
  renders_one :footer
  renders_one :button

  def initialize(title: 'title', body: 'contente')
    @title = title
  end
end
