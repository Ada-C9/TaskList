# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

###Task List
Let's build a Task List in Rails! We will solve the problem of tracking tasks in a web application. This project will enable us to keep track of and persist, add, edit and remove tasks. This is an individual Stage 1 project.

##Learning Goals
Practice all aspects of Rails development.

Create a new Rails application
Explore each aspect of the Rails Request Cycle: Model, View, Controller
Implement RESTful routes using Rails standards
Complete all CRUD actions in a Rails application

###Baseline
In this baseline, you'll create a new Rails application and get started with two of the major components: route, controller and view.

Fork and clone this repository to your computer

Create a new Rails application using rails new .

create a Tasks controller

create a route to view the task index page

create a controller action for the task index page which contains an array of hard-coded tasks
create an ERB view to display the tasks from the controller action

###Wave 1
This wave is where we introduce ActiveRecord to create a model. We use the model to persist our data.

create a migration which will create a new Task model
create the database schema and tables by running the rails db:migrate command
the Task model should include at least a name, a description and a completion date
create at least 2 Task model instances using the rails console
update the controller's index action you created to retrieve and show all Task objects from the database
you may need to update the view as well to use the model fields rather than the hard-coded data
Optional Design
The focus of this project is to familiarize yourself with rails. Design of this application is optional and secondary to learning goals this project. If you do find you have time to style the design of your application, you can use or own design or the wireframes below.
