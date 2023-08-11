class AddArtistToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :artist, :string
  end
end
