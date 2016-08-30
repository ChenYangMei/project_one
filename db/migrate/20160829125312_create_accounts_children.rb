class CreateAccountsChildren < ActiveRecord::Migration
  def change
    create_table :accounts_children, :id => false do |t|
      t.integer :account_id
      t.integer :child_id
    end
  end
end
