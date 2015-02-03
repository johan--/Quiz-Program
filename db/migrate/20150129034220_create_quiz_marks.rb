class CreateQuizMarks < ActiveRecord::Migration
  def change
    create_table :quiz_marks do |t|

    	t.integer :student_quiz_mark

    	t.integer :student_id
    	t.integer :quiz_id

        t.timestamps null: false

    end
  end
end
