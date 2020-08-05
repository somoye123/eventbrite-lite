class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(sign_up_params)
        if @user.save
          flash[:notice] = 'Post was created successfully'
          session[:user_id] = @user.id
          session[:username] = @user.name
          redirect_to user_path(@user)
        else
          flash[:alert] = 'Woops something went wrong'
          render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end
        
    private
    
    def sign_up_params
    params.require(:user).permit(:name)
    end
end
    