class AddColumnToBorrowing < ActiveRecord::Migration[5.2]
  def change
  	add_column :borrowings, :isReturned, :boolean, :default => false
  end
end
