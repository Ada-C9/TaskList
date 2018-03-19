class TasksController < ApplicationController

  TASK_LIST = [
    { id: 1, description: "vacuum" },
    { id: 2, description: "wash dishes" },
    { id: 3, description: "grocery shopping" },
    { id: 4, description: "drink wine" }
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
end
