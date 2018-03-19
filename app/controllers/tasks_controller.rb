class TasksController < ApplicationController
  def index
    @tasks = [
      "buy groceries",
      "do laundry",
      "finish CS Fundamentals Homework",
      "read POODR Ch. 4",
      "stretch",
      "meal prep"
    ]
  end
end
