class ChangeStoryImageToArray < ActiveRecord::Migration
  def change
    remove_column :stories, :image
    add_column :stories, :image, :text, :array => true, :default => []
  end
end
