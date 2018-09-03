class Api::V1::GuestsController < ApplicationController
    
    before_action :get_guest, only: [:update]

    def index
        @guests = Guest.all
        render json: @guests
    end

    def create
        @guest = Guest.new(guest_params)
        if @guest.save
            render json: @guest, status: :accepted
        else
            render json: { errors: @guest.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @guest.update(guest_params)
        if @guest.save
            render json: @guest, status: :accepted
        else
            render json: { errors: @guest.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def guest_params
        params.permit(:name, :phone_number, :email)
    end
    

    def get_guest
        @guest = Guest.find(params[:id])
    end

end
