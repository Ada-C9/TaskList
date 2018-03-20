class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @tasks = Task.find(id)
  end

  def create
  end

  def edit
  end

  def mark_complete
  end

  def delete
  end
end
