class TaskController < ApplicationController
  def index
    @tasks = ["wake up", "Take boys to school", "Grocery Shopping", "Make dinner", "Bath the boys"]
  end
end
