class PropertiesController < ApplicationController


	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)
    @property.user = current_user
    if @property.save
      redirect_to new_room_path, notice: 'The property was successfully created!'
    else
      render :new
    end
	end

  private

  def property_params
    params.require(:property).permit(:address, :square_meter, :furnished)
  end
end
