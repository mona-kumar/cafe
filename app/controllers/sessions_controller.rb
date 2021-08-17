class SessionsController < ApplicationController
    skip_before_action:ensure_user_logged_in
    def new
        render "new"
    end

    def create
        user=User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:current_user_id]=user.id
            if user.role=="Customer"
                redirect_to customer_menu_items_path
            else
                redirect_to item_manager_index_path
            end
            
        else
            render plain:"Incorect creds!"
        end
    end


    def destroy
        session[:current_user_id]=nil
        @current_user=nil
        redirect_to "/"
    end
end