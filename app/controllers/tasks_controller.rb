class TasksController < ApplicationController
TASK_LIST = [

  {id: 1, title: "Task One", completed: false, action: "edit", erase: "delete"},
  {id: 2, title: "Task Two", completed: false, action: "edit", erase: "delete"},
  {id: 3, title: "Task Three", completed: false, action: "edit", erase: "delete"},
  {id: 4, title: "Task Four", completed: false, action: "edit", erase: "delete"}
]

  def index
    @tasks = TASK_LIST
  end

  def show
    id = params[:id]
    @task = TASK_LIST.find do |task|
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

  def complete
  end

  def destroy
  end
end
