class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments
      end
    
      def show
        @comment = find_comment
        render json: @comment
      end
    
      def update
        @comment = find_comment
        @comment.update(comment_params)
        if @comment.save
          render json: @comment, status: :accepted
        else 
          render json: { errors: @comment.errors.full_messsages }, status: :unprocessible_entity
        end
      end
    
      def create
        @comment = User.create(comment_params)
        if @comment.valid?
          render json: @comment, status: :accepted 
        else 
          render json:{errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
      end
    
      private
      def comment_params
        params.permit(:post)
      end
    
      def find_comment
        @comment = Comment.find(params[:id])
      end
end
