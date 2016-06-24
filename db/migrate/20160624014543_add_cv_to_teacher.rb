class AddCvToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :cv, :text
  end
end
