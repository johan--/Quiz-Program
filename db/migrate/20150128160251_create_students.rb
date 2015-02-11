class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.string :name
      t.date :date_of_birth
      t.integer :expected_year_of_graduation
      t.string :personal_image
      t.string :gender
      t.string :studying_year
     # t.string :seat_number

      t.integer :section_id

      t.timestamps null: false
      
    end
  end
end
