class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path, notice: 'Lista criada com sucesso!'
    else
      render :new  
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
