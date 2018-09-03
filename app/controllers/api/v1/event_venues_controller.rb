class Api::V1::EventVenuesController < ApplicationController
    
    before_action :get_event_venue, only: [:update, :destroy]

    def index
        @event_venues = EventVenue.all
        render json: @event_venues
    end

    def create
        @event_venue = EventVenue.new(event_venue_params)
        if @event_venue.save
            render json: @event_venue, status: :accepted
        else
            render json: { errors: @event_venue.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @event_venue.update(event_venue_params)
        if @event_venue.save
            render json: @event_venue, status: :accepted
        else
            render json: { errors: @event_venue.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @event_venue.destroy
        head :no_content
    end

    private

    def event_venue_params
        params.permit(:event_id, :venue_id)
    end
    

    def get_event_venue
        @event_venue = EventVenue.find(params[:id])
    end
    
end
