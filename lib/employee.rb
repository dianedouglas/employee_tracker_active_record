class Employee < ActiveRecord::Base

  has_and_belongs_to_many :projects

  def add_to_div(division)
    self.division_id = division.id
  end

  belongs_to(:division)

end
