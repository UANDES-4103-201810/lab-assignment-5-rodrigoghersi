class UsersController < ApplicationController
	def create
	  @user = User.new
	  respond_to do |format|
            format.json {render json: @user}
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
	  @user = User.all
	  respond_to do |format|
            format.json {render json: @user.to_json}
	  end		
	end
	
end
