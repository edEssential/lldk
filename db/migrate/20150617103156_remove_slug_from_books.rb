class RemoveSlugFromBooks < ActiveRecord::Migration
  def self.up
    remove_column :books, :slug
  end

  def self.down
    add_column :books, :slug, :string
  end
end
