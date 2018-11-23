class RoomElementApprovalsController < ApplicationController
    skip_before_action :authenticate_user!

  def new
    @room_element = RoomElement.find(params[:room_element_id])
    @room_element_approval = RoomElementApproval.new
  end

  def create
    @room_element = RoomElement.find(params[:room_element_id])

    @approval = RoomElementApproval.new(room_element_approval_params)
    @approval.room_element = @room_element

    if @approval.save
      ConfirmationMailer.confirm(@comment).deliver_now
      redirect_to root_path, notice: 'Your report is approved ✅'
    else
      redirect_to root_path
    end
  end

  def room_element_approval_params
    params.require(:room_element_approval).permit(:condition_report_id, :tenant_approval, :owner_approval)
  end
end
