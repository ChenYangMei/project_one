class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :image
      t.integer :story_id
      t.integer :account_id
      t.timestamps null: false
    end
  end
end
