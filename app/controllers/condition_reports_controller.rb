class ConditionReportsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @conditionreport = ConditionReport.all
  end

  def show
    @conditionreport = ConditionReport.find(params[:id])
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

    @conditionreport = ConditionReport.find(params[:id])
  end

  def update
    @conditionreport = ConditionReport.find(params[:id])
    @conditionreport.update(conditionreport_params)
    redirect_to condition_report_path(@conditionreport)
  end

  private

  def conditionreport_params
    params.require(:condition_reports).permit(:owner_signed, :tenant_signed)
  end
end