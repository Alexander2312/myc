class ConditionReportsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @cr = Cr.all
  end

  def show
    @cr = Cr.find(params[:id])
  end

  def new
    @cr = Cr.new
  end

  def create
    @cr = Cr.new(cr_params)
    @cr.user = current_user
    @cr.save
    redirect_to condition_report_path, notice: 'You are on the good way!'
  end

  def edit
    @cr = Cr.find(params[:id])
  end

  def update
    @cr = Cr.find(params[:id])
    @cr.update(cr_params)
    redirect_to condition_report_path(@cr)
  end

  private

  def cr_params
    params.require(:condition_reports).permit(:date_of_creation, :date_of_update)
  end
end
