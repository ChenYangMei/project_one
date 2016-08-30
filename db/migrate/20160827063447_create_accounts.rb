class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :status, :default => 0
      t.string :email
      t.string :name
      t.text :image
      t.text :password_digest
    end
  end
end
