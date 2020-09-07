class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
      t.text :comment
      t.integer :user_id, foreign_key: true
      t.integer :book_id, foreign_key: true

      t.timestamps
    end
  end
end
