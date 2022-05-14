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

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update 
    @inventory = Inventory.find(params[:id])

    if @inventory.update(inventory_params)
      redirect_to inventories_path(@inventory), notice: 'Inventory updated!'
    else
      render 'edit'
    end
  end
  
  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy 

    redirect_to root_path
  end

  private

  def inventory_params
    params.require(:inventory).permit(:product, :quantity)
  end
  
end
