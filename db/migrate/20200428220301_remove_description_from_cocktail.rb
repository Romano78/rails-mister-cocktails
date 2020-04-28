class RemoveDescriptionFromCocktail < ActiveRecord::Migration[6.0]
  def change

    remove_column :cocktails, :description, :text
  end
end
