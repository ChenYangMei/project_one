class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find params[:id]
    @comment = Comment.new
  end

  def new
    @story = Story.new
  end

  def create
    story = Story.new(story_params)
    params[:image].each do |photo|
      req = Cloudinary::Uploader.upload(photo)
      story.image << req['public_id']
    end
    story.save
    redirect_to story_path(story)
  end

  def edit
    @story = Story.find params[:id]
  end

  def update
    story = Story.find params[:id]
    story.update(story_params)
    redirect_to story_path(story)
  end

  def destroy
    story = Story.find params[:id]
    story.destroy
    redirect_to stories_path
  end

  private
  def story_params
    params.require(:story).permit(:title, :story_date, :content, :image)
  end

end
