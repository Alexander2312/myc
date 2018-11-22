class CommentsController < ApplicationController
  def new
    @room_element = RoomElement.find(params[:room_element_id])
    @comment = Comment.new
  end

  def create
    @condition_report = ConditionReport.find(params[:room_element_id])
    @room_element = RoomElement.find(params[:room_element_id])
    @comment = Comment.new(comment_params)
    @comment.room_element = @room_element
    @comment.user_id = current_user.id
    @comment.condition_report = ConditionReport.first

    if @comment.save
      # ConfirmationMailer.confirm(@comment).deliver_now
      redirect_to edit_condition_report_path(@condition_report), notice: 'Your comment has been saved 👏'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text_comment, :state, :photo)
  end
end
