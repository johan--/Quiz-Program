class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|

      t.string :name
      t.string :gender
      t.string :role
      t.string :personal_image

      t.timestamps null: false
      
    end
  end
end
