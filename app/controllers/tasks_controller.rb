class TasksController < ApplicationController
  TASKS_LIST = [
    {id: 1, title: "Task One"},
    {id: 2, title: "Task Two"},
    {id: 3, title: "Task Three"},
    {id: 4, title: "Task Four"}
  ]

  def index
    @tasks = TASKS_LIST
  end

  def show
    id = params[:id]
    @task = TASKS_LIST.find do |task|
      task[:id] == id.to_i
    end
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
