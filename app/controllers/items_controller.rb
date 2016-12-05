class ItemsController < ApplicationController

  def create
    @item = Item.new

    @item.user_id = current_user.id
    @item.assign_attributes(item_params)

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to profile_path

    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
