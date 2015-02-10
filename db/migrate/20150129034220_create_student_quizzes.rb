class CreateStudentQuizzes < ActiveRecord::Migration
  def change
    create_table :student_quizzes do |t|

    	t.integer :student_quiz_mark

    	t.integer :student_id
    	t.integer :quiz_id

        t.timestamps null: false

    end
  end
end
