class TasksController < ApplicationController

  TASKS_LIST = [
    {id: 1, description: "Wash the dishes"},
    {id: 2, description: "Finish HW"},
    {id: 3, description: "Walk the dog"},
    {id: 4, description: "Take a shower"}
  ]

  def index
    @tasks = TASKS_LIST
  end

  def show
  end

end
