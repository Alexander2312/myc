class CommentsController < ApplicationController
    skip_before_action :authenticate_user!

  def new
    @comment = Comment.new
    @conditionreport = ConditionReport.find(params[:condition_report_id])
    @room_element = RoomElement.find(params[:room_element_id])

  end

  def create
    @room_element = RoomElement.find(params[:room_element_id])
    @condition_report = ConditionReport.find(params[:condition_report_id])
    @comment = Comment.new(comment_params)
    @comment.room_element = @room_element
    @comment.user_id = current_user.id
    @comment.condition_report = @condition_report


    if @comment.save!
      # ConfirmationMailer.confirm(@comment).deliver_now

      redirect_to edit_condition_report_path(@condition_report, anchor: "element-#{@room_element.id}")
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:room_element_id, :condition_report_id, :text_comment, :state, :photo, )
  end
end
