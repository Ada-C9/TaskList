class TasksController < ApplicationController

  TASK_LIST = [
    {id: 1, short_desc: "wash dog", due_date: "12 Apr 2018", priority: 1,  description: "Give lipsie an oatmeal bath"},
    {id: 2, short_desc: "clean car", due_date: "1 Apr 2018", priority: 3,  description: "The car is disgusting and you need to do something about it."},
    {id: 3, short_desc: "pay OR bar dues", due_date: "28 Mar 2018", priority: 2,  description: "Give the mofos $200 so that you can keep putting them on your résumé."},
    {id: 4, short_desc: "finish donor thanks letters", due_date: "20 Mar 2018", priority: 1,  description: "Just power through and get these done. Now."}
  ]

  def index
    @tasks = TASK_LIST
  end
end
