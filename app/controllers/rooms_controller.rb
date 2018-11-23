class RoomsController < ApplicationController
	 skip_before_action :authenticate_user!

	def new
		@room = Room.new
	end

	def create
	@room = Room.new(room_params)
  @property = Property.last
  # propertyarray = []
  # propertyarray << Property.where(user_id: current_user.id)
  # @property = propertyarray[-1]
  @room.property = @property
    if @room.save
    redirect_to new_room_room_element_path(@room), notice: 'The room was successfully created!'
    else
    render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :property)
  end
end
