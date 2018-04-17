class TicketsController < ApplicationController

	def create
	  @ticket = Ticket.new
	  respond_to do |format|
            format.json {render json: @ticket}
	  end
	end

	def destroy
	  @user = User.find(params[:id]).destroy
	end

	def update
	  @ticket = Ticket.find(params[:id])
	  respond_to do |format|
            format.json {render json: @ticket.to_json}
	  end
	
	end

	def show 
	  @ticket = Ticket.all
	  respond_to do |format|
            format.json {render json: @ticket.to_json}
	  end	
	end

end
