class AddCertificateToArtists < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :certificate, :string
  end
end
