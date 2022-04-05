class AddCategoryToPhoto < ActiveRecord::Migration[6.1]
  def change
    add_column :photos, :category, :string
  end
end
