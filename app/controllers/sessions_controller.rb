class SessionsController < ApplicationController
    def new
        render "new"
    end

    def create
        user=User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:current_user_id]=user.id
            if user.role=="Customer"
                redirect_to "/"
            else
                redirect_to item_manager_index_path
            end
            
        else
            render plain:"Incorect creds!"
        end
    end
end