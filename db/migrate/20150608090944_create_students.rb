class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :Adm_No
      t.date :birth_date
      t.string :gender
      t.string :nationality
      t.string :form
      t.string :stream
      t.string :class_teacher
      t.string :address
      t.integer :phone_1
      t.integer :phone_2
      t.string :email
      t.string :town
      t.string :county
      t.date :Adm_date

      t.timestamps null: false
    end
  end
end
