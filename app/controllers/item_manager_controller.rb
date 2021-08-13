class ItemManagerController < ApplicationController
   
    def index
        render "index"
    end


    def create
        menu_category_id=params[:menu_category_id]
        name=params[:name]
        description=params[:description]
        price=params[:price]
        new_item=MenuItems.create!(menu_category_id:menu_category_id,
        name:name,
        description:description,
        price:price,
        )
       redirect_to item_manager_index_path
    end
end