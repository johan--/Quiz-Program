class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|

    	t.integer :section_number
    	t.string  :department
    	t.string  :studying_year
    	t.string  :sub_department

      t.timestamps null: false
    end
  end
end
