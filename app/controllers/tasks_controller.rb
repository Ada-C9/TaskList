class TasksController < ApplicationController
  def index
    @home_list = ["feed the llama", "dust the sheets", "sweep the roof", "make bubble soup"]
  end
end
