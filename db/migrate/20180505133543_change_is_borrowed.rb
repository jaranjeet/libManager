class ChangeIsBorrowed < ActiveRecord::Migration[5.2]
  def change
  	change_column :books, :isBorrowed, :boolean, :default => 0
  end
end
