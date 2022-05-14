class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end

  def create 
    @inventory = Inventory.create(inventory_params)
    redirect_to inventories_path(@inventory)
  end

  private

  def inventory_params
    params.require(:inventory).permit(:product)
  end
  
end
