class CreateTrueOrFalseAnswers < ActiveRecord::Migration
  def change
    create_table :true_or_false_answers do |t|

    	t.boolean :student_answer

		t.integer :true_or_false_question_id
		t.integer :student_id
    	
      	t.timestamps null: false

    end
  end
end
