class CreatePayFees < ActiveRecord::Migration
  def change
    create_table :pay_fees do |t|
      t.string :student_name
      t.string :Adm_no
      t.string :form
      t.string :stream
      t.integer :amount
      t.string :pay_method

      t.timestamps null: false
    end
  end
end
