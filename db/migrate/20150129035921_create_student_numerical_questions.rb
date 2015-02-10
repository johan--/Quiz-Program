class CreateNumericalAnswers < ActiveRecord::Migration
  def change
    create_table :student_numerical_questions do |t|

    	t.integer :student_answer

		t.integer :student_id
    	t.integer :numerical_question_id
    	
      	t.timestamps null: false

    end
  end
end
