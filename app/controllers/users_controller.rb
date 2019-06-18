class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
      end
    
      def show
        @user = find_user
        render json: @user
      end
    
      def update
        @user = find_user
        @user.update(user_params)
        if @user.save
          render json: @user, status: :accepted
        else 
          render json: { errors: @user.errors.full_messsages }, status: :unprocessible_entity
        end
      end
    
      def create
        @user = User.create(user_params)
        if @user.valid?
          render json: @user, status: :accepted 
        else 
          render json:{errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
      end
    
      private
    
      def user_params
        params.permit(:email)
      end
    
      def find_user
        @user = User.find(params[:id])
      end
end
