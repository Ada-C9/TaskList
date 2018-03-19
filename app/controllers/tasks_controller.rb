class TasksController < ApplicationController

  TASK_LIST = [{id: 1, title: "Make pasta", description: "This is where you describe the task of making pasta.", status: "Incomplete"}, {id: 2, title: "Do laundry", description: "This is where you describe the task of doing laundry.", status: "Incomplete"}, {id: 3, title: "Read POODR", description: "This is where you describe the task of reading POODR.", status: "Incomplete"}]

  def index
    @tasks = TASK_LIST
  end

  def show
    id = params[:id]
    @task = TASK_LIST.find { |task| task[:id] == id.to_i }
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
