class Api::V1::CommentsController < ApplicationController
    
    before_action :get_comment, only: [:update, :destroy]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render json: @comment, status: :accepted
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @comment.update(comment_params)
        if @comment.save
            render json: @comment, status: :accepted
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @comment.destroy
        head :no_content
    end

    private

    def comment_params
        params.permit(:message, :post_id)
    end
    

    def get_comment
        @comment = Comment.find(params[:id])
    end
    
end
