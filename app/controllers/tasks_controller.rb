class TasksController < ApplicationController

  TASKS = ["feed cat", "read poodr", "make dinner', renew bus pass", "laundry", "return library books", "charge phone", "finish hw"]

  def index
    @tasks = TASKS
  end

end
