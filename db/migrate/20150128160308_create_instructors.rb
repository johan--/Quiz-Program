class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|

      t.string :name
      t.string :email
      t.string :gender
      t.string :role
      t.string :personal_image
      t.string :password

      t.timestamps null: false
      
    end
  end
end
