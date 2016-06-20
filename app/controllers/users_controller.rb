class UsersController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @user = @project.users.new user_params
    if @user.save
      redirect_to :back
    else
      render 'projects/show'
    end
  end

  def show
  end

  def destroy
    @user.destroy
  end


  private

    def user_params
      params.require(:user).permit(:name)
    end
end
