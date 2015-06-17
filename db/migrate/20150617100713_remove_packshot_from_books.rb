class RemovePackshotFromBooks < ActiveRecord::Migration
  def self.up
    remove_attachment :books, :packshot
  end

  def self.down
    add_attachment :books, :packshot
  end
end
