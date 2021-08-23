class CartController < ApplicationController
     
    def index
        @orderitems=OrderItems.where(current_user_id:session[:current_user_id])
        render "index"
    end

end