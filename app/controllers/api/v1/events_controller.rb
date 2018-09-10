class Api::V1::EventsController < ApplicationController

    before_action :get_event, only: [:show, :update, :destroy]

    def index
        @events = Event.all
        render json: @events
    end

    def show
        render json: @event
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            render json: @event, status: :accepted
        else
            render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    def update
        @event.update(event_params)
        if @event.save
            render json: @event, status: :accepted
        else
            render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @event.destroy
        head :no_content
    end

    private

    def event_params
        params.permit(:title, :date, :rain_date, :description, :contact_details, :budget, :user_id)
    end
    

    def get_event
        @event = Event.find(params[:id])
    end

end
