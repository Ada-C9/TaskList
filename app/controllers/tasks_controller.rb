class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    my_task = params[:id]

    @task = Task.find(my_task)
  end

  def new
    @task = Task.new
  end

  def create
    incoming_task = params[:task]
    new_task = Task.new
    new_task.name = incoming_task[:name]
    new_task.description = incoming_task[:description]
    new_task.completion = incoming_task[:completion]
    new_task.priority = incoming_task[:priority]

    if new_task.save
      redirect_to tasks_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    updated_task = params[:task]
    the_task = Task.find(params[:id])
    # the_book.title = updated_book[:title]
    # the_book.author = updated_book[:author]
    # the_book.publication_date = updated_book[:publication_date]
    # the_book.synopsys = updated_book[:synopsys]
    the_task.update_attributes(
      name: updated_task[:name],
      description: updated_task[:description],
      completion: updated_task[:completion],
      priority: updated_task[:priority],
    )

    if the_task.save
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def mark_complete
    task = Task.find(params[:id])
    if task.completion == nil
      task.update_attributes(completion: Time.now)
    else
      task.update_attributes(completion: nil)

      redirect_to tasks_path

    end
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion, :priority)
  end

end
