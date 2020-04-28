class RemoveMethodFromCocktail < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :method, :text
  end
end
