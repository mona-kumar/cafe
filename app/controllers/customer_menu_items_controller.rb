class CustomerMenuItemsController < ApplicationController

   before_action:ensure_user_logged_in
def create

    customer_user_id=session[:current_user_id]
   
    menu_item_id=params[:id] 
    
    quantity=params[:quantity]
  
    order_item=OrderItems.create!(current_user_id:customer_user_id,
    
    menu_item_id:menu_item_id,

    quantity:quantity,
    
    )
    redirect_to customer_menu_items_path, success: "Item added successfully to cart!"
    
end


    def destroy
        id=params[:id]
        item_destroyed=OrderItems.destroy(id)
        redirect_to cart_index_path
    end



end