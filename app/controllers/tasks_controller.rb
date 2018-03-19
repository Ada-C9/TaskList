class TasksController < ApplicationController

  TASKS_LIST = [
    {id: 1, title: "Do CS Fun homework", due: Date.new(2018,3,26),
      status: :incomplete},
    {id: 2, title: "Pay cellphone bill", due: Date.new(2018,3,29),
      status: :incomplete},
    {id: 3, title: "Call Dad", due: Date.new(2018,3,19), status: :incomplete},
    {id: 4, title: "Feed fish", due: Date.new(2018,3,18), status: :complete}
  ]

  def index
    @tasks = TASKS_LIST
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def mark_complete
  end

  def destroy
  end
end
