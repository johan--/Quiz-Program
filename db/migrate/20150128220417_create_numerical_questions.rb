class CreateNumericalQuestions < ActiveRecord::Migration
  def change
    create_table :numerical_questions do |t|

    	t.string :question
      t.integer :question_mark
      t.boolean :bonus                  , default: 0
      t.text :explanation              
      t.boolean :hint                   , default: 0
      t.text :hint_sentence             
      t.integer :hint_discounted_mark 
      t.integer :answer

      t.integer :quiz_id

      t.timestamps null: false
      
    end
  end
end
