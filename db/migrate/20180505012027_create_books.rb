class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :pages
      t.float :price
      t.string :subject
      t.boolean :is_borrowed

      t.timestamps
    end
  end
end
