class TasksController < ApplicationController

  TASKS_LIST = [
    {id: 1, task: "do the thing", misc_notes: "stuff about this task", completed: false},
    {id: 2, task: "do the thing", misc_notes: "stuff about this task", completed: false},
    {id: 3, task: "do the thing", misc_notes: "stuff about this task", completed: false},
    {id: 4, task: "do the thing", misc_notes: "secret agenda", completed: false}
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
