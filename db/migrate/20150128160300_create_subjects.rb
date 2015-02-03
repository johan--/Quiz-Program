class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|

      t.string :subject
      t.string :course_code
      t.string :studying_year

      t.integer :instructor_id

      t.timestamps null: false
      
    end
  end
end
