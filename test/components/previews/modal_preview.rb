
class ModalPreview < ViewComponent::Preview

  def default
    render(Modal::ModalComponent.new(title: "Título do Modal"))
  end

end
