class StoriesController < ApplicationController
  before_action :find_project

  def index
    @stories = @project.stories.all
  end

  def show
  end

  def new
    @story = @project.stories.new
    @user = @project.users.new
  end

  def create
    @story = @project.stories.new(story_params)
    if @story.save
      redirect_to project_stories_path(@project)
    else
      render 'new'
    end
  end

  def edit
    @story = @project.stories.find(params[:id])
  end

  def update
    @story = @project.stories.find(params[:id])
    if @story.update(story_params)
      redirect_to project_stories_path(@project)
    else
      render 'new'
    end
  end

  def destroy
    @story = @project.stories.find(params[:id])
    @story.destroy
    redirect_to project_stories_path(@project)
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end

  def story_params
    params.require(:story).permit(:goal, :benefit, {user_ids:[]})
  end
end
