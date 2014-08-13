require 'spec_helper'

describe Employee do

  describe '#add_to_div' do

    it 'should add the employee to a division by assigning a div_id to the employee' do
      test_employee = Employee.create({:name => 'Bob'})
      test_division = Division.create({:name => 'HR'})
      test_employee.add_to_div(test_division)
      expect(test_employee.division_id).to eq test_division.id
    end
  end
   it "adds an employee to a project" do
     test_employee = Employee.create({:name => 'Yee'})
     test_project = Project.create({:name => 'Manhatten'})
     # Employees_projects.create({:employee_id => test_employee.id, :project_id=> test_project.id})
     test_employee.add_project(test_project)
     expect(test_employee.projects).to eq [test_project]
   end
end
