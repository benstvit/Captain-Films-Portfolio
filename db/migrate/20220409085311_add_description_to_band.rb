class AddDescriptionToBand < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :description, :text
  end
end
