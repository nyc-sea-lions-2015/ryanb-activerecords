class CommentsController < ApplicationController
  before_filter :authorize

  def new
    @comment = Comment.new
    @record = Record.find_by_id(params[:record_id])
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment.record
    else
      render 'new'
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body,
                                     :record_id,
                                     :user_id)
    end

end
