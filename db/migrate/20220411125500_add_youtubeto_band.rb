class AddYoutubetoBand < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :youtube_url, :string
  end
end
