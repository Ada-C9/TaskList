class TasksController < ApplicationController
  TASKS_LIST = [
    {id: 1, name: "Tapioca Pudding", description: "thicken comforting goo"},
    {id: 2, name: "Creme Brulee", description: "steam bath same old"},
    {id: 3, name: "Toffee Pudding", description: "back scrumptious stickiness"},
    {id: 4, name: "Guinness Chocolate Mousse", description: "make deliciousness"}
  ]
  def index
    @tasks = TASKS_LIST
  end

  def show
    id = params[:id]
    @task = TASKS_LIST.find do |task|
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

  def complete
  end
end
