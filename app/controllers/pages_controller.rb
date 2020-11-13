class PagesController < ApplicationController

  before_action :find_story, only: [:show]
  def index
    # @stories = Story.published.with_attached_cover_image.order(created_at: :desc).includes(:user)
    @new_story_first = Story.published_stories.limit(1).order(created_at: :desc)
    @new_stories_sec_list = Story.published_stories.limit(2).offset(1).order(created_at: :desc)
    @stories_hot_list = Story.published_stories.order(clap: :desc)
    # @stories_followed_list = current_user.follow_ids
  end

  def show
    @comment = @story.comments.new
    @comments = @story.comments.order(id: :desc)
  end

  def user
  end

  private

  def find_story
    @story = Story.friendly.find(params[:story_id])
  end
end
