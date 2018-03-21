class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # def new
  # end

  # def create
  # end

  def show
    # is there a hash created (once a form exits?)
    # there's a name, description and completion_date
    # books included title and author
    raw_task = params[:task]

    task = Task.new # must create a local instance of a book

    task.name = raw_task[:description]
    task.completion_date = raw_task[:completion_date]

  end

  # def edit
  # end

  # def update
  # end
  
  # def destroy
  # end

end
