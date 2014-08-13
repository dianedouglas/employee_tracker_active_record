class RenameDivIdColumn < ActiveRecord::Migration
  def change
    remove_column :employees, :div_id
    add_column :employees, :division_id, :int
  end
end
