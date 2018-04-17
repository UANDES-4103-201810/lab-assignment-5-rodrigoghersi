class PlacesController < ApplicationController

	def create
	  @place = Place.new
	  respond_to do |format|
            format.json {render json: @place}
	  end
	end

	def destroy
	  @place = Place.find(params[:id]).destroy
	end

	def update
	  @place = Place.find(params[:id])
	  respond_to do |format|
            format.json {render json: @place.to_json}
	  end
	
	end

	def show 
	  @place = Place.all
	  respond_to do |format|
            format.json {render json: @place.to_json}
	  end	
	end

end
