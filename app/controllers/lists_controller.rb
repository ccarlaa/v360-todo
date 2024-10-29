class ListsController < ApplicationController
  def index
    if params[:name].present?
      name = "%#{params[:name]}%"
      @lists = List.where("name like ?", name)
  
    else
      @lists = List.all
      params[:name] = nil
    end
  end
  def show
    @list = List.find(params[:id])
    @items = @list.items
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
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
