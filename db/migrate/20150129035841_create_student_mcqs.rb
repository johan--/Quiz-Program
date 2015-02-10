class CreateMcqAnswers < ActiveRecord::Migration
  def change
    create_table :student_mcqs do |t|

    	t.integer :student_answer

    	t.integer :student_id
    	t.integer :mcq_id
    	
      	t.timestamps null: false

    end
  end
end
