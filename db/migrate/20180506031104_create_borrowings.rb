class CreateBorrowings < ActiveRecord::Migration[5.2]
  def change
    create_table :borrowings do |t|
      t.timestamp :issued_on
      t.references :Student, foreign_key: true, on_delete: :cascade
      t.references :Book, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
