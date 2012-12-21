class Tasks_usersController < ApplicationController
def show
    @tasks_user = Tasks_user.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tasks_user }
    end
  end
  
end