class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.string :name
      t.date :date_of_birth
      t.integer :expected_year_of_graduation
      t.string :personal_image
      t.integer :section_number
      t.string :email
      t.string :gender
      t.string :password
      t.string :studying_year

      t.timestamps null: false
      
    end
  end
end
