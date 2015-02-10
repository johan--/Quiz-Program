class CreateTrueOrFalseAnswers < ActiveRecord::Migration
  def change
    create_table :student_true_or_false_questions do |t|

    	t.boolean :student_answer

		t.integer :true_or_false_question_id
		t.integer :student_id
    	
      	t.timestamps null: false

    end
  end
end
