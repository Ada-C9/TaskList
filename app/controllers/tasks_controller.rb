class TasksController < ApplicationController
  def index

    @tasks = [
      { id: "Task One", status: ["mark", "edit", "delete"]},
      # { title: "Practical Object-Oriented Design in Ruby", author: "Sandi Metz"},
      # { title: "The Love Dare", author: "Alex Kendrick; Stephen Kendrick"}
    ]
  end
end
