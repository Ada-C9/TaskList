# <h2>Create a New Task</h2>
#
# <%= form_for @task do |f| %>
#
# <%= f.label :name %>
# <%= f.text_field :name %>
#
# <%= f.label :owner %>
# <%= f.text_field :owner %>
#
# <%= f.label :description %>
# <%= f.text_area :description %>
#
# <%= f.submit  %>
# <% end %>
#
# <h2>Create a New Task</h2>
#
# <form action="/tasks" method="post">
#   <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
#
#   <label for="title">Title:</label>
#   <input name="title" value="" id="title" type="text">
#
#   <label for="author">Author:</label>
#   <input name="author" id="author" type="text">
#
#   <label for="description">Description:</label>
#   <textarea name="description" id="description" >
#   </textarea>
#
#   <input name="submit" id="image" type="image" width="30" height=auto alt=“Submit”
#     <%= image_tag "task7.png", alt: "Submit button" %>
#
# </form>
# class TasksController < ApplicationController
#   def index
#     @tasks = Task.all
#   end
#
#   def show
#     id = params[:id]
#     @task = Task.find(id)
#   end
#
#   def new
#     @task = Task.new
#   end
#
#   def create
#     task = Task.new(task_params)
#     if task.save
#       redirect_to root_path
#     else
#       render :new
#     end
#   end
#
#   def edit
#     @task = Task.find_by(id: params[:id])
#   end
#
#   def update
#     @task = Task.find_by(id: params[:id])
#     if !@task.nil?
#       if @task.update(task_params)
#         redirect_to task_path(@task.id)
#       else
#         render :edit
#       end
#     else
#       redirect_to tasks_path
#     end
#
#     def destroy
#       id = params[:id]
#       @task = Task.find(id)
#       @task.destroy
#     end
#   end
#
#   private
#
#   def task_params
#     return params.require(:task).permit(:name, :owner, :description, :complete, :date_complete)
#   end
#
# # end
#
# def destroy
#   id = params[:id]
#   @task = Task.find(id)
#   @task.destroy
# end
