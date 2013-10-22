class AddPackshotToBooks < ActiveRecord::Migration
  def self.up
    add_attachment :books, :packshot
  end

  def self.down
    remove_attachment :books, :packshot
  end
end
