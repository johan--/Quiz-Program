class CreateTrueOrFalseQuestions < ActiveRecord::Migration
  def change
    create_table :true_or_false_questions do |t|

	    t.string :question
      t.integer :question_mark
      t.boolean :bonus
      t.text :explanation
      t.boolean :hint
      t.text :hint_sentence
      t.integer :hint_discounted_mark
      t.boolean :answer

      t.integer :quiz_id

      t.timestamps null: false

    end
  end
end
