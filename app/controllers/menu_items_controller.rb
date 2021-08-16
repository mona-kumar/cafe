class MenuItemsController<ApplicationController
 
    
   def update
    id=params[:id]
    name=params[:name]
    @menu_items=MenuCategory.all.where("id = ?",id)
    render "index"
   end

   def create
        menu_category_id=@menu_items.id
        item_name=params[:name]
        description=params[:description]
        price=params[:price]
        new_item=MenuItems.create!(menu_category_id:menu_category_id,
        name:name,
        description:description,
        price:price
        )
        response_text="Hey, your new item is created with the id #{new_item.id}"
        render plain:response_text
        
   end
end