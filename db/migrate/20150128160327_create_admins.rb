class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :name
      t.string :gender
      t.string :email
      t.string :password
      t.boolean :admin_authority
      t.boolean :instructor_authority
      t.boolean :department_authority
      t.boolean :subject_authority
      t.boolean :reply_msg_authority
      t.boolean :student_authority

      t.timestamps null: false

    end
  end
end
