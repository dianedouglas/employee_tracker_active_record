require 'pry'
require 'active_record'
require './lib/employee'

database_configurations = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configurations['development']
ActiveRecord::Base.establish_connection(development_configuration)

def welcome
  puts "Welcome to the employee tracker! Your number 1 way to micro manage!"
main
end

def main
  selection = nil
  until selection == 'e'
    puts "Choose an option:"
    puts "Press 'a' to add an employee."
    puts "Press 'd' to delete an employee."
    puts "Press 'l' to list all employees."
    puts "Press 'm' to modify an employee."
    selection = gets.chomp
    case selection
    when 'a'
      add_employee
    when 'd'
      destroy_employee
    when 'l'
      list_employees
    when 'm'
      modify_employee
    else
      puts 'invalid entry'
    end
  end
end


def add_employee
  puts "please enter the employees name:"
  name = gets.chomp
  employee = Employee.create({:name => name})
  puts employee.name + " has been added!"
end

def destroy_employee
  puts "please enter the employees name:"
  name = gets.chomp
  employee = Employee.find_by({:name => name})
  employee.destroy
  puts name + " has been destroyed. Bwa haha!"
end

def list_employees
  puts "Here are all your worker drones:"
  Employee.all.each_with_index {|employee, index| puts (index + 1).to_s + ". " + employee.name}
end

def modify_employee
  puts "please enter the employees name:"
  name = gets.chomp
  employee = Employee.find_by({:name => name})
  puts "would you like to change the employee's name? y/n"
  choice = gets.chomp
  if choice == 'y'
    puts "enter their new name."
    name = gets.chomp
    employee.name = name
    employee.save
  else
    puts "well fine. nevermind then."
    main
  end

end
welcome
