class TasksController < ApplicationController
  def index
    @tasks = [
      {task: "take dogs to the dog park", status: :TODO},
      {task: "eat cake", status: :TODO},
      {task: "read books!", status: :TODO}
    ]
  end

  def new
  end

  def create
  end
end
