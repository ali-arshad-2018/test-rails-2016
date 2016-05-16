module V1
  class TaskListsController < ApplicationController
    before_action :set_user, :set_task, only: [:show]


    def index
      @user = User.find(params[:user_id])
      @tasks = @user.task_lists

      respond_with_json @tasks
    end


    def show
      respond_with_json @task
    end

    private
    

    def set_task
      @task = TaskList.find(params[:id])
    end
  end
end