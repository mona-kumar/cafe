class MenuItems <ApplicationRecord
   has_many:menu_items
   def self.breakfast
      all.where("menu_category_id = ?","1")
   end
   def self.lunch
      all.where("menu_category_id = ?","2")
   end
   def self.dinner
      all.where("menu_category_id = ?","3")
   end
   def self.drinks
      all.where("menu_category_id = ?","4")
   end
   def self.desserts
      all.where("menu_category_id = ?","5")
   end
end