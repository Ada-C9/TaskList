class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    # Commented out so we can use task_params
    # task.name = params[:task][:name]
    # task.completion_date = params[:task][:completion_date]
    # task.description = params[:task][:description]

    if task.save #it worked
      redirect_to index_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
    if @task.nil?
      redirect_to task_path
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    if !@task.nil?

      # Materials commented out because we are now using strong params.
      # @book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description])

      if @task.update(task_params)
        redirect_to task_path(@task.id)
      else
        render :edit
      end
    else
      redirect_to index_path
    end
  end

  def mark_complete
    @task = Task.find_by(id: params[:id])
    # @task.update(:completion_date, Time.now)

    @task.update(id: params[:id], completion_date: Time.now)
    redirect_to index_path
    # if @task.completion_date.kind_of?(Time)
    #   redirect_to index_path
    # else
    #   render :edit
    # end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)

    if @task.destroy #it worked
      redirect_to index_path
    # else
    #   render :destroy
    end
  end

  private

  def task_params
    # You don't need an explicit return here, but if it helps keep things straight in your head, it's okay to do it.
    params.require(:task).permit(:name, :completion_date, :description)
    # If you want to add new fields, you have to add them here, not in the create or update methods.
  end
end
