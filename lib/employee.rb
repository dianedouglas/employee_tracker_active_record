class Employee < ActiveRecord::Base

  has_and_belongs_to_many :projects
  belongs_to(:division)

  def add_to_div(division)
    self.division_id = division.id
  end

  def add_project(project)
    # self.projects.new()
    self.projects << project #creates new entry in join table, not array method.
  end

end
