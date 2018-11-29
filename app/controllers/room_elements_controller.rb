class RoomElementsController < ApplicationController
	  skip_before_action :authenticate_user!

	def new
    @room = Room.find(params[:room_id])
		@room_element = RoomElement.new
	end

	def create
  @room = Room.find(params[:room_id])
	@room_element = RoomElement.new(room_element_params)
  @room_element.room = @room
    if @room_element.save
    redirect_to root_path, notice: 'The room element was successfully created!'
    else
    render :new
    end
  end

  private

  def room_element_params
    params.require(:room_element).permit(:name, :room)
  end
end

