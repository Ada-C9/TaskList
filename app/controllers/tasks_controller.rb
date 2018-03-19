class TasksController < ApplicationController

  TASK_LIST = [
    { id:1, task: "Clean the apt", description: "Use the vaccum!", sub_tasks: ["vaccum", "dust", "laundry"] },
    { id:2, task: "Go shopping", description: "Go to the store!", sub_tasks: ["vaccum", "dust", "laundry"] },
    { id:4, task: "Go outside", description: "Go outdoors!", sub_tasks: ["hike", "yard work", "relax"] },
    { id:5, task: "Eat Ice Cream", description: "Eat more ice cream!", sub_tasks: ["get ice cream", "eat ice cream"]}
  ]

  def index
    @tasks = TASK_LIST
  end

  def show
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
