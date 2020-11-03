class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name 
        @salary = salary 
        @manager = manager
        Employee.all << self
    end 

    def self.all
        @@all
    end 

    def manager_name
        self.manager.name
    end 

    def self.paid_over(sal)
        self.all.select{|employee| employee.salary > sal}
    end 

    def self.find_by_department(dep)
        self.all.select{|employee| employee.manager.department == dep}
    end 

    def tax_bracket
        Employee.all.select{|employee| employee.salary < self.salary+1000 && employee.salary > self.salary-1000}
    end 

end
