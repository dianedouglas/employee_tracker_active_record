require 'spec_helper'

describe Employee do

  describe '#add_to_div' do

    it 'should add the employee to a division by assigning a div_id to the employee' do
      test_employee = Employee.create({:name => 'Bob'})
      test_division = Division.create({:name => 'HR'})
      test_employee.add_to_div(test_division)
      expect(test_employee.div_id).to eq test_division.id
    end
  end
end
