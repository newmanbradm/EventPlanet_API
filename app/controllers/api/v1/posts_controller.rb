class Api::V1::PostsController < ApplicationController
    
    before_action :get_post, only: [:update, :destroy]

    def index
        @posts = Post.all
        render json: @posts
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            render json: @post, status: :accepted
        else
            render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @post.update(post_params)
        if @post.save
            render json: @post, status: :accepted
        else
            render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @post.destroy
        head :no_content
    end

    private

    def post_params
        params.permit(:image_url, :event_id)
    end
    

    def get_post
        @post = Post.find(params[:id])
    end
    
end
