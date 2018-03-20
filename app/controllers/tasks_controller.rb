class TasksController < ApplicationController
  def index
    @tasks = [ "Go grocery shopping",
      "Wait a week for avocado to ripen",
      "Marinade meat",
      "Invite friends",
      "Pour chips",
      "Make Guacamole",
      "Make tacos",
      "Find doggos to pet"
    ]

  end

  def create
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end

end
