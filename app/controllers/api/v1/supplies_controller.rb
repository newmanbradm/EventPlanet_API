class Api::V1::SuppliesController < ApplicationController
    
    before_action :get_supply, only: [:update, :destroy]

    def index
        @supplies = Supply.all
        render json: @supplies
    end

    def create
        @supply = Supply.new(supply_params)
        if @supply.save
            render json: @supply, status: :accepted
        else
            render json: { errors: @supply.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @supply.update(supply_params)
        if @supply.save
            render json: @supply, status: :accepted
        else
            render json: { errors: @supply.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @supply.destroy
        head :no_content
    end

    private

    def supply_params
        params.permit(:name, :price, :store_url, :event_id)
    end
    

    def get_supply
        @supply = Supply.find(params[:id])
    end
    
end
