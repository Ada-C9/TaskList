class TasksController < ApplicationController
  def index
    @tasks = [
      {task: "read textbook", status: :INCOMPLETE},
      {task: "do laundry", status: :INCOMPLETE},
      {task: "finish website", status: :INCOMPLETE},
      {task: "practice derby edges", status: :INCOMPLETE},
    ]
  end
end
