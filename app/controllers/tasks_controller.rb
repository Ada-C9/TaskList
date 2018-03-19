class TasksController < ApplicationController
  TASKS_LIST = [
    {id: 1, task: "Clean the bathroom"},
    {id: 2, task: "Wash Dishes"},
    {id: 3, task: "Sweep the floor"},
    {id: 4, task: "Vacuum"},
    {id: 5, task: "Finish homework"}
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
end
