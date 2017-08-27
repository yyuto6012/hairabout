class AddDefaultToArtists < ActiveRecord::Migration[5.0]
  def change
    add_index :artists, :prefecture_id
  end
end
