class CreateNumericalQuestions < ActiveRecord::Migration
  def change
    create_table :numerical_questions do |t|

    	t.integer :question_mark
      t.boolean :bonus
      t.text :explanation
      t.boolean :hint
      t.text :hint_sentence
      t.integer :hint_discounted_mark
      t.integer :answer

      t.integer :quiz_id

      t.timestamps null: false
      
    end
  end
end
