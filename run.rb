require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("m1", "d1", 40)
m2 = Manager.new("m2", "d2", 35)
m3 = Manager.new("m3", "d3", 32)

e1 = Employee.new("e1", 73000, m1)
e2 = Employee.new("e2", 75000, m2)
e3 = Employee.new("e3", 76000, m3)

e4 = Employee.new("e4", 74000, m1)
e5 = Employee.new("e5", 75000, m2)
e6 = Employee.new("e6", 76000, m3)

e7 = m1.hire_employee("e7", 74000)
e8 = m2.hire_employee("e8", 79000)
e9 = m2.hire_employee("e9", 77000)
binding.pry
puts "done"

 