class CreateQuizes < ActiveRecord::Migration
  def change
    create_table :quizes do |t|

      t.timestamps null: false
    end
  end
end
