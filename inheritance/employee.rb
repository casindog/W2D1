class Employee 
  attr_accessor :boss
  attr_reader :salary
  def initialize(name,title,salary,manager)
    @name = name 
    @title = title 
    @salary = salary
    @manager = manager 
  end    

  def add_to_manager(manager)
    Manager.boss
  end

  def bonus(multiplier)
    bonus = salary * multiplier
  end 
  
end 