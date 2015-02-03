class CreateStudentsSubjectsJoin < ActiveRecord::Migration
  def change
    create_table :students_subjects, id: false do |t|

    	t.integer :student_id
    	t.integer :subject_id
    	
    end
  end
end
