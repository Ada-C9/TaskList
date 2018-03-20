class TasksController < ApplicationController
  def index
    @tasks = Task.all

    # [
    #   { task: "Buy a trash can"},
    #   { task: "Make lightning talk"},
    #   { task: "Learn elbow stand"}
    # ]
    
  end


  # def new
  # end
  #
  # def create
  # end
  #
  # def show
  ## Load it from the DB
  ## Save it in an instance variable for the view

  # task_id = params[:id]
  # @task = Task.find(task_id)
  # end
  #
  # def edit
  # end
  #
  # def update
  # end
  #
  # def destroy
  # end

end
