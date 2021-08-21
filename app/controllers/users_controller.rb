class UsersController < ApplicationController
    skip_before_action:ensure_user_logged_in
   
    def index
       render "new"
    end

    def create 
        User.create!(
            first_name:params[:first_name],
            last_name:params[:last_name],
            role:params[:role],
            email:params[:email],
            password:params[:password]
        )
        redirect_to "/"
    end

    def destroy
        session[:current_user_id]=nil
        @current_user=nil
        redirect_to "/"
    end
end