class CommentsController < ApplicationController

  def create
    @story = Story.find params[:story_id]
    comment = Comment.create(comment_params)
    @story.comments << comment
    @current_account.comments << comment
    redirect_to story_path(@story)
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def update
    comment = Comment.find params[:id]
    comment.update(comment_params)
  end

  def destroy
    comment = Comment.find params[:id]
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :image)
  end
end
