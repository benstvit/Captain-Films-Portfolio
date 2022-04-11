class AddFacebookToBand < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :facebook_url, :string
  end
end
