class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :name
      t.string :gender 
      t.boolean :admin_authority
      t.boolean :reply_msg_authority
      t.boolean :add_authority  # add instructor, department, subject and student 

      t.timestamps null: false

    end
  end
end
