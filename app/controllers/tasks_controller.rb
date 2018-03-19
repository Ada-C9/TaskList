class TasksController < ApplicationController
  Task_LIST = [{ id:1, task_type:"cleaning", done_by:"George", complete: "true" }, { id:2, task_type:"cooking", done_by:"Jane Austin", complete: "false"}, { id:3, task_type:"organizing", done_by:"JK Rowling", complete: "false"}, { id:4, task_type:"reading", done_by:"Octavia E. Butler", complete: "true"}]

  def index
    @tasks = Task_LIST
  end

  def show
    id = params[:id]
    @task = Task_LIST.find do |task|
      task[:id] == id.to_i
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
