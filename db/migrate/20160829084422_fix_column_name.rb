class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :accounts, :status, :role
  end
end
