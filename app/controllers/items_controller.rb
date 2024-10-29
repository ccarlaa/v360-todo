class ItemsController < ApplicationController

  def index
    @items = Item.all
  end
  def create
    puts 'SDLFKASDÇFKASÇDLFKASDLFK'
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def toggle_done
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])

    @item.update(done: !@item.done)

    respond_to do |format|
      format.json { render json: { success: true, done: @item.done, item_id: @item.id }, status: :ok }
      format.html { redirect_to list_path(@list), notice: 'Status atualizado com sucesso.' }
      format.js 
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to list_item_path(@list) }
      format.json { head :no_content }
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:text, :done)
  end
end
