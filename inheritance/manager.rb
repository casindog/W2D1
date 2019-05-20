require_relative 'employee.rb'


class Manager < Employee
  include Enumerable

  def initialize(name, salary)
    @name = name
    @salary = salary
    @employees = []
  end

  def add_employee
    #loop through all the instances of employees, and then
    #shovel them into @employees

    Employee.each do |emp_name|
      if emp_name.manager == Manager.name
        employees << emp_name.name
      end
    end
  end

  def bonus

  end

end