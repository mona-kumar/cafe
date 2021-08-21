class CustomerMenuItemsController < ApplicationController
    skip_before_action:ensure_user_logged_in
def create  
   
    menu_item_id=params[:id] 
    
    quantity=params[:quantity]
  
    order_item=OrderItems.create!(menu_item_id:menu_item_id,

    quantity:quantity,
    
    )
    response_text="Hey, your item successfully added to cart #{order_item.id}"
    render plain:response_text
    
end


    def destroy
        id=params[:id]
        item_destroyed=OrderItems.destroy(id)
        redirect_to cart_index_path
    end



end