class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.string :gender
      t.text :image
      t.date :dob
      
      t.timestamps null: false
    end
  end
end
