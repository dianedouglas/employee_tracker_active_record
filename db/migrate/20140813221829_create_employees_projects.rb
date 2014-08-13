class CreateEmployeesProjects < ActiveRecord::Migration
  def change
    create_table :employees_projects, id: false do |t|
      t.belongs_to :employee
      t.belongs_to :project
    end
  end
end
