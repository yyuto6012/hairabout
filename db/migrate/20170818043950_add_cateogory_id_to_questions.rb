class AddCateogoryIdToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :category_id, :integer, foreign_key: true
  end
end
