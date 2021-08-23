class MenuItemsController < ApplicationController

   skip_before_action:ensure_user_logged_in
    
   def update
      id=params[:id]
      name=params[:name]
      @menu_cats=MenuCategory.all.where("id = ?",id).first
      render "index"
   end

   def create
        menu_category_id=params[:menu_cats_id]
        item_name=params[:name]
        description=params[:description]
        price=params[:price]
        new_item=MenuItems.create!(menu_category_id:menu_category_id,
        name:item_name,
        description:description,
        price:price
        )
        @menu_cats=MenuCategory.all.where("id = ?",menu_category_id).first
        redirect_to menu_items_path(@menu_cats)
   end

end