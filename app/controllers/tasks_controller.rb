class TasksController < ApplicationController
  def index
    @tasks = [{task: "read textbook", status: "incomplete"},{task: "do laundry", status: "incomplete"}, {task: "finish website", status: "incomplete"}, {task: "practice derby edges", status: "incomplete"}]
  end
end
