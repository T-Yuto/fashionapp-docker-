class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @item = Item.new
    @item.up_images.new
    @item.down_images.new
  end

  def create
    binding.pry
    # if item_params[:up_images].persisted? || item_params[:down_images].persisted?
    @item = Item.new(item_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_param
    param.require(:item)
         .permit(:id, up_images_attributes: [:id, :name, :item_id, :_destroy, image: []], down_images_attributes: [:id, :name, :item_id, :_destroy, image: []])
         .merge(user_id: current_user.id)
  end

  def set_item
    return redirect_to root_path unless Item.exists?(params[:id])
    @item = Item.find(params[:id])
  end

  # def return_not_equal_user
  #   if @item.user_id != current_user.id
  #     return redirect_to item_path(@item)
  #   end
  # end
end
