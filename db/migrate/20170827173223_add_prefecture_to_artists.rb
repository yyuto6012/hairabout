class AddPrefectureToArtists < ActiveRecord::Migration[5.0]
  def change
    rename_column :artists, :prefecture, :prefecture_id
  end
end
