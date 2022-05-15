class CreateDeleteComments < ActiveRecord::Migration[7.0]
  def change
    create_table :delete_comments do |t|
      t.text :body
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
