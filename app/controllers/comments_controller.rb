class CommentsController < ApplicationController
  def new
    @room = Room.find(params[:room_element_id])
    @comment = Comment.new
  end

  def create
  end
end
