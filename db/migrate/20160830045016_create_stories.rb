class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.date :story_date
      t.string :image
      t.text :content
      t.integer :account_id
      t.timestamps null: false
    end
  end
end
