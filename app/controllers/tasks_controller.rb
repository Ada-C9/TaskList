class TasksController < ApplicationController
  def index
    @home_list = ["feed the dog", "dishes", "sweep", "laundry"]
  end
end
