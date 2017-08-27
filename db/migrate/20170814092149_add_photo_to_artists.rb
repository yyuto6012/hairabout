class AddPhotoToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :header_photo, :string
    add_column :users, :header_photo, :string
  end
end
