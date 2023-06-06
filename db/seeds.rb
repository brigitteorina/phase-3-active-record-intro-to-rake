#seed task. This task is responsible for "seeding" our database with some placeholder data.

#The conventional way to seed your database is to have a file in the db directory, db/seeds.rb, that contains some code to create instances of your class.

Student.create(name: "Melissa", grade: "10th")
Student.create(name: "April", grade: "10th")
Student.create(name: "Luke", grade: "9th")
Student.create(name: "Devon", grade: "11th")
Student.create(name: "Sarah", grade: "10th")

#Then, we define a rake task that executes the code in this file. This task will also be namespaced under db:

#namespace :db do

  # ...

  #desc 'seed the database with some dummy data'
  #task seed: :environment do
   # require_relative './db/seeds'
  #end
#end

#if we run bundle exec rake db:seed in our terminal (provided we have already run rake db:migrate to create the database table), we will insert five records into the database.


