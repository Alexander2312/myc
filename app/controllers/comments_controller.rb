class CommentsController < ApplicationController
  def new
    @comment = Comment.find(params[])
  end

  def create
  end
end
