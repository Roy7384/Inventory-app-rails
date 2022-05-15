class DeleteCommentsController < ApplicationController
  protect_from_forgery with: :null_session
  
  def create 
    @inventory = Inventory.find(params[:inventory_id])
    @delete_comment = @inventory.delete_comments.create(params.require(:delete_comment).permit(:body))
    @inventory.destroy
    redirect_to inventories_path
  end
  
end
