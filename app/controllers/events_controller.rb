class EventsController < ApplicationController

	def create
	  @event = Event.new
	  respond_to do |format|
            format.json {render json: @event}
	  end
	end

	def destroy
	  @event = Event.find(params[:id]).destroy
	end

	def update
	  @event = Event.find(params[:id])
	  respond_to do |format|
            format.json {render json: @event.to_json}
	  end
	end

	def show 
	  @event = Event.all
	  respond_to do |format|
            format.json {render json: @event.to_json}
	  end	
	end


end
