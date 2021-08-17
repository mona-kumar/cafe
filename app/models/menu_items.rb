class MenuItems <ApplicationRecord
   has_many:menu_items
   def self.breakfast
      all.where"menu_category_id = ?","1")
   end
  
end