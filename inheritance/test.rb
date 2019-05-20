require_relative "employee.rb"
require_relative "manager.rb"

Manager.new("John Boss",55000)
Employee.new("Mark 1", "VP", 45000,"John Boss")
Employee.new("Steven 2", "Sales", 30000, "John Boss")