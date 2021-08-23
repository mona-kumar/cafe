class SessionsController < ApplicationController
    skip_before_action:ensure_user_logged_in
    def new
        render "new"
    end

    def create
        user=User.find_by(email: params[:email])
        if User.find_by(email: params[:email]) == nil 
            redirect_to new_sessions_path, danger: "Please enter ethe details!"

        elsif user && user.authenticate(params[:password])
            session[:current_user_id]=user.id
            if user.role=="Customer"
                redirect_to customer_menu_items_path
            else
                redirect_to item_manager_index_path
            end
            
        else
            redirect_to new_sessions_path, danger: "Invalid username or password.Try again!"
        end
    end


    def destroy
        OrderItems.delete_all
        session[:current_user_id]=nil
        @current_user=nil
        redirect_to "/"
    end
end