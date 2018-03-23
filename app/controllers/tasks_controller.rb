class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.priority = params[:task][:priority]
    if task.save # this saves the new book AND evaluates the conditional
      redirect_to tasks_path
    else
      render :new # this symbol is just referring to the name of the view. Not going to trigger new cycle, will just bring up that view.
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    if !task.nil?
      if task.update(name: params[:task][:name], description: params[:task][:description], priority: params[:task][:priority])
        redirect_to task_path(task.id)
      else
        render :edit
      end
    else
      redirect_to tasks_path
    end
  end

  def toggle_complete
    id = params[:id]
    task = Task.find(id)
    task.update(completion_date: Date.new)
    redirect_to tasks_path
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
    redirect_to tasks_path
  end

end
