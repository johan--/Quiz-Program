class CreateInstructorsStudentsJoin < ActiveRecord::Migration
  def change
    create_table :instructors_students , id: false do |t|

    	t.integer :instructor_id
    	t.integer :student_id
    	
    end
  end
end
