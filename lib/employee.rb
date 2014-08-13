class Employee < ActiveRecord::Base

  def add_to_div(division)
    self.division_id = division.id
  end
end
