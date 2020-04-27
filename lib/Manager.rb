class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age

        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.manager_name == self}
    end

    def hire_employee(employee_name, employee_salary)
        Employee.new(employee_name, employee_salary, self)
    end

    def self.all_departments
        self.all.map {|managers| managers.department}
    end

    def self.average_age
        ages = self.all.map {|managers| managers.age}
        ages.sum(0.0)/ages.count
    end
end
