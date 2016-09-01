class CreateAccountsStories < ActiveRecord::Migration
  def change
    create_table :accounts_stories do |t|
      t.integer :story_id
      t.integer :account_id
    end
  end
end
