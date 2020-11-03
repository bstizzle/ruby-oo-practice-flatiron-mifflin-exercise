class Manager
    attr_accessor :name, :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name 
        @department = department
        @age = age
        Manager.all << self 
    end 

    def self.all
        @@all
    end 

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end 

    def self.all_departments 
        self.all.map{|manager| manager.department}.uniq
    end 

    def self.average_age
        self.all.sum{|manager| manager.age}/self.all.count
    end 

end
