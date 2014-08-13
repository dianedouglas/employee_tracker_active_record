require 'spec_helper'

describe Project do

  it 'adds an employee to the project' do
    test_employee = Employee.create({:name => 'Yee'})
    test_project = Project.create({:name => 'Manhatten'})
    test_project.add_employee(test_employee)
    expect(test_project.employees).to eq [test_employee]
  end
end
