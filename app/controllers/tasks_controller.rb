class TasksController < ApplicationController
  def index
    @tasks = [
      { task: "Go to the gym", status: "incomplete"},
      { task: "Go to class", status: "incomplete"},
      { task: "Grocery shopping", status: "incomplete"},
      { task: "Return library book", status: "incomplete"},
      { task: "Make dinner", status: "incomplete"},
      { task: "Do homework", status: "incomplete"}
    ]
  end

end
