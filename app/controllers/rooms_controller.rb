class RoomsController < ApplicationController
	def new
	end

	def index
		@rooms = Room.all
	end

	def create
		@room = Room.new(room_params)
		@room.save
		redirect_to @room
	end

	def show
		@room = Room.find(params[:id])
	end

	private 

	def room_params
		params.require(:room).permit(:topic)
	end

	
end
