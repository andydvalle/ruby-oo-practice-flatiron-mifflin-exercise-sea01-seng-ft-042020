class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize (name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        self.all.select {|employee| employee.salary >= num}
    end

    def self.find_by_department(department)
        department_found = Manager.all.find {|manager| manager.department == department}
        department_found.employees[0]
    end

    def tax_bracket
        min = self.salary - 1000
        max = self.salary + 1000
        Employee.all.find_all {|employee| employee.salary >= min && employee.salary  <= max}
    end
end