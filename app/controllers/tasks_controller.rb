class TasksController < ApplicationController

  TASK_LIST = [
    {id: 1, name: "Take dog out", status: "Incomplete"},
    {id: 2, name: "Cook breakfast", status: "Incomplete"},
    {id: 3, name: "Take a shower", status: "Incomplete"},
    {id: 4, name: "Pack lunch", status: "Incomplete"}
  ]

  def index
    @tasks = TASK_LIST
  end

  def show
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

  def complete
  end
end
