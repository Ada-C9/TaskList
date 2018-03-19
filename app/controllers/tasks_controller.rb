class TasksController < ApplicationController

  TASKS_LIST = [
    {id: 1, task: "Wash the dishes"}
    {id: 2, task: "Finish HW"}
    {id: 3, task: "Walk the dog"}
    {id: 4, task: "Take a shower"}
  ]

  def index
    @tasks = TASKS_LIST
  end
end
