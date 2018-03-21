class TasksController < ApplicationController

  # TASK_LIST = [
  #   {id: 1, task_title: "Walk dog", description: "Don't forget poop bags", due: "3/10/18"},
  #   {id: 2, task_title: "Stop to smell the roses", description: "Be careful on the roses", due: "4/1/18"},
  #   {id: 3, task_title: "Eat ice cream", description: "At least three scoops", due: "3/20/18"},
  #   {id: 4, task_title: "Buy more ice cream", description: "Choclate chip cookie dough or Chaco Tacos", due: "3/25/18"}
  # ]

  def index
    @task = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
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
    id = params[:id]
    @task = task.find(id)
    @task.destroy
  end

end
