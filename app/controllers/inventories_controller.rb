class InventoriesController < ApplicationController

  protect_from_forgery with: :null_session
  
  def index
    @inventories = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end

  def create 
    @inventory = Inventory.create(inventory_params)
    if @inventory.save
      redirect_to inventories_path(@inventory), notice: 'Inventory created!'
    else
      render :new
    end
  end

  private

  def inventory_params
    params.require(:inventory).permit(:product, :quantity)
  end
  
end
