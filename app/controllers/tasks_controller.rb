class TasksController < ApplicationController
  def index
    @tasks = [
      { to_do: "feed kitties", when: "everyday" },
      { to_do: "play with kitties", when: "everyday" },
      { to_do: "clean up after kitties", when: "today" },
      { to_do: "brush and groom kitties", when: "tomorrow" }
    ]
  end

  def new
  end

  def create
  end

  def show
  
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
