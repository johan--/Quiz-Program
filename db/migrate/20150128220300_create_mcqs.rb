class CreateMcqs < ActiveRecord::Migration
  def change
    create_table :mcqs do |t|

      t.string :question
      t.string :choice1               
      t.string :choice2               
      t.string :choice3               , default: nil
      t.string :choice4               , default: nil
      t.integer :question_mark
      t.boolean :bonus                , default: false
      t.text :explanation             , default: nil
      t.boolean :hint                 , default: false
      t.text :hint_sentence           , default: nil
      t.integer :hint_discounted_mark , default: 0

      t.string :answer
      t.integer :quiz_id

      t.timestamps null: false
      
    end
  end
end
