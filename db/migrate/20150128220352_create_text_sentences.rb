class CreateTextSentences < ActiveRecord::Migration
  def change
    create_table :text_sentences do |t|

      t.text :text_sentence

      t.integer :quiz_id
      
      t.timestamps null: false

    end
  end
end
