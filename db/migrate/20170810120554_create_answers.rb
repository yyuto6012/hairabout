class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :text
      t.references :artist
      t.integer :like_count

      t.timestamps
    end
  end
end
