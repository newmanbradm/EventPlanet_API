class Api::V1::VenuesController < ApplicationController
    
    before_action :get_venue, only: [:update]

    def index
        @venues = Venue.all
        render json: @venues
    end

    def create
        @venue = Venue.new(venue_params)
        if @venue.save
            render json: @venue, status: :accepted
        else
            render json: { errors: @venue.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @venue.update(venue_params)
        if @venue.save
            render json: @venue, status: :accepted
        else
            render json: { errors: @venue.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def venue_params
        params.permit(:name, :image_url, :address)
    end
    

    def get_venue
        @venue = Venue.find(params[:id])
    end
    
end
