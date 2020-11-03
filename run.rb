require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
sarah = Manager.new("Sarah", 50, "Marketing")
james = Manager.new("James", 37, "Finance")
ben = Employee.new("Ben", 1000, sarah)
hannah = Employee.new("Hannah", 700, sarah)
diana = Employee.new("Diana", 2100, james)


binding.pry
puts "done"
