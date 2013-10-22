class ChangeSynopsisInBooks < ActiveRecord::Migration
  def up
    change_column :books, :synopsis, :text, :limit => nil
  end

  def down
    change_column :books, :synopsis, :text
  end
end
