class ConditionReportsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @conditionreport = ConditionReport.all
  end

  def show
    @conditionreport = ConditionReport.find(params[:id])
    @rooms = @conditionreport.lease.property.rooms
    @room_element_approval = RoomElementApproval.new(condition_report_id: @conditionreport.id)
    respond_to do |format|
      format.html
      format.pdf {
        render :pdf => "show", :layout => 'pdf.html'
      }
    end
  end

  def new
    @conditionreport = ConditionReport.new
  end

  def create
    @conditionreport = ConditionReport.new(conditionreport_params)
    @conditionreport.user = current_user
    @conditionreport.save
    redirect_to condition_report_path, notice: 'You are on the good way!'
  end

  def edit
    @comment = Comment.new
    @conditionreport = ConditionReport.find(params[:id])
    @rooms = @conditionreport.lease.property.rooms
    @room_element_approval = RoomElementApproval.new(condition_report_id: @conditionreport.id)
  end

  def update
    @conditionreport = ConditionReport.find(params[:id])
    @conditionreport.update(conditionreport_params)
    redirect_to condition_report_path(@conditionreport)
  end

  def confirmation
    @room_element_approval = RoomElementApproval.new
    @conditionreport = ConditionReport.find(params[:id])
    @rooms = @conditionreport.lease.property.rooms
  end

  private

  def conditionreport_params
    params.require(:condition_reports).permit(:owner_signed, :tenant_signed, :id, :room_element_id)
  end
end
