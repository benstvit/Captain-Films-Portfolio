class AddSpotifyUrlToBand < ActiveRecord::Migration[6.1]
  def change
    add_column :bands, :spotify_url, :string
  end
end
