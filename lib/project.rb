class Project < ActiveRecord::Base

    has_and_belongs_to_many :employees

    def add_employee(employee)
      self.employees << employee
    end

end
