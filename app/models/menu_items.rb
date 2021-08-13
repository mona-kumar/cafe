class MenuItems <ApplicationRecord

    def self.breakfast
        all.where("menu_category_id = ?","1")
     end
end