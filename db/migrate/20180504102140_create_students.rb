class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :roll_no
      t.string :name
      t.string :class_
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
