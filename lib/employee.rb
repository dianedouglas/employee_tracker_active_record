class Employee < ActiveRecord::Base

  def add_to_div(division)
    self.div_id = division.id
  end
end
