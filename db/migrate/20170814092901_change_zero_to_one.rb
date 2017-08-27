class ChangeZeroToOne < ActiveRecord::Migration[5.0]
  def change
    change_column_default :artists, :like_count, 0
    change_column_default :questions, :want_count, 0
  end
end
