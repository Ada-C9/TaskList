# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies


* Configuration

1. create a migration which will create a new `Task` model
    - create the database schema and tables by running the `rails db:migrate` command
    - the `Task` model should include _at least_ a name, a description and a completion date
    - create at least 2 `Task` model instances using the `rails console`
1. update the controller's `index` action you created to retrieve and show `all` Task objects from the database
    - you may need to update the view as well to use the model fields rather than the hard-coded data


* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


* ...

## Wave 4
In this wave, we will add the ability to delete tasks. We will also add the ability for a user to mark a task complete.

1. Delete a task  
    On the task list, add a button or link for each task that will, once clicked:
    1. Ask the user to confirm that they definitely want to delete the task.
    1. Delete the task from the database and redirect the user back to the list of remaining tasks
1. Mark a task complete
    - Add a button to the list of tasks on the home page that, when clicked, will mark a task complete
    - Update the database with the task's completed date


### Optional Design
The focus of this project is to familiarize yourself with rails. Design of this application is optional and secondary to learning goals this project. If you do find you have time to style the design of your application, you can use or own design or the wireframes below.

![Homepage Wireframe](/imgs/tasklist_homepage.jpg "Homepage Wireframe")

## What We're Looking For

Instructors will be looking for the content [here](feedback.md) when evaluating your project.  

## Due Date
This project is due Sunday the 25th

