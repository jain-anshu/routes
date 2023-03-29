class UsersController < ApplicationController
    def index
        render json: {message: "Hello you!"}
    end
    
    def show
       #user = User.find(params[:id])
        render json: {message: "user id: #{params[:id]} doesn't exist. Also add #{params["tucker"]}"}
    end  
    
    def create
        user = User.new(user_params)
        if user.save
           render json: {message: "User created"}, status: :ok
        else  
          render json: {message: user.errors.full_messages, details: user_params}, status: :unprocessable_entity
        end  
    end

    def user_params
      params.require(:user).permit( :name, :email)
    end
end