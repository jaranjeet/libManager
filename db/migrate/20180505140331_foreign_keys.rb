class ForeignKeys < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :transactions, :books, on_delete: :cascade
  	add_foreign_key :transactions, :students, on_delete: :cascade
  end
end
