class AddHashIdToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :hash_id, :integer, limit: 8
    rename_column :artists, :descritpion, :description
  end
end
