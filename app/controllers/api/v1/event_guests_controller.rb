class Api::V1::EventGuestsController < ApplicationController
    
    before_action :get_event_guest, only: [:update, :destroy]

    def index
        @event_guests = EventGuest.all
        render json: @event_guests
    end

    def create
        @event_guest = EventGuest.new(event_guest_params)
        if @event_guest.save
            render json: @event_guest, status: :accepted
        else
            render json: { errors: @event_guest.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @event_guest.update(event_guest_params)
        if @event_guest.save
            render json: @event_guest, status: :accepted
        else
            render json: { errors: @event_guest.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @event_guest.destroy
        head :no_content
    end

    private

    def event_guest_params
        params.permit(:event_id, :guest_id)
    end
    

    def get_event_guest
        @event_guest = EventGuest.find(params[:id])
    end
    
end
