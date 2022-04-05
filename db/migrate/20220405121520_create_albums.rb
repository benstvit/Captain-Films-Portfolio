class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :genre
      t.date :release_year
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
