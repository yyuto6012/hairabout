class ChangeDefaultUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :prefecture_id
  end

end
