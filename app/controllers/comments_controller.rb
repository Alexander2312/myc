class CommentsController < ApplicationController
  def new
    @room_element = RoomElement.find(params[:room_element_id])
    @comment = Comment.new
  end

  def create
    @room_element = RoomElement.find(params[:room_element_id])
    @comment = Comment.new(comment_params)
    @room_element.comment = @comment
  end

  private

  def comment_params
    params.require(:commment).permit(:text_comment, :state, :photo)
  end
end
