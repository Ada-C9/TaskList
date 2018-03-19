class TasksController < ApplicationController

  def index
    @tasks = [
      "laundry",
      "dishes",
      "grocery shopping",
      "wash car",
      "vacuuming"
    ]
  end

end
