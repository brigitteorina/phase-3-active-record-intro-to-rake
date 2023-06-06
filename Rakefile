#rake -T in the terminal to view a list of rake tasks available and their descriptions.
#desc 'outputs hello to the terminal'
#task :hello do
#  puts "hello from Rake!"
#end

#desc 'outputs hola to the terminal'
#task :hola do
 # puts "hola de Rake!"
#end

#Namespacing both hello and holla under the greeting heading:
#:to use either of the below rake tasks we us e the following syntax:
# rake greeting:hello
#rake greeting:hola
namespace :greeting do
  desc 'outputs hello to the terminal'
    task :hello do
      puts "hello from Rake!"
    end
  
    desc 'outputs hola to the terminal'
    task :hola do
      puts "hola de Rake!"
    end
  end

  #use bundle exec rake greeting:hello...if you experience gem errors while executing in the terminal

  #task dependancy
  namespace :db do
    desc 'migrate changes to your database'
    task migrate: :environment do
      Student.create_table
    end
  end

  task :environment do
    require_relative './config/environment'
  end

  #after code 31-40,a student table will be created.
  #task migrate: :environment do
  #The issue is that our Student.create_table code needs access to the config/environment.rb file because that's where the student class and database are loaded. Before we can migrate, we need to give our task access to this file, and the environment task is what will do this for us. 
  #we do this by adding the below code  code:
  #task :environment do
  #require_relative './config/environment'
  #end 


  #seeding.
  namespace :db do

    # ...
  
    desc 'seed the database with some dummy data'
    task seed: :environment do
      require_relative './db/seeds'
    end
  end
  #we run bundle exec rake db:seed in our terminal (provided we have already run rake db:migrate to create the database table), we will insert five records into the database.


  #We'll define a task that starts up the Pry console. We'll make this task dependent on our environment task so that the Student class and the database connection load first. Note that this class is not namespaced under :db, since we'll use it as a more general-purpose tool.
  desc 'drop into the Pry console'
task console: :environment do
  Pry.start
end

#Now, provided we ran rake db:migrate and rake db:seed, we can drop into our console with the following:

 #bundle exec rake console...this brings up a pry session in our terminal.You can check all students by typing Student.all

