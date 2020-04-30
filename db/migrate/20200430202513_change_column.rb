class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :doses, :description, :varchar
  end
end
