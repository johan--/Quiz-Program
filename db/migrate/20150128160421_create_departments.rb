class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|

      t.string :department_name
      t.integer :begin_year

      t.timestamps null: false
      
    end
  end
end
