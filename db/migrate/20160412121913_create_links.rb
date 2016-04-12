class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :links, :user_id
  end
end
