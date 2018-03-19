class TasksController < ApplicationController
  def index
    @tasks = [
      { task_name: "Vacuum", status: "Incomplete" },
      { task_name: "Run dishwasher", status: "Incomplete" },
      { task_name: "Do homework", status: "Incomplete" }
    ]
  end
end
