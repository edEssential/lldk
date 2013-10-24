class ChangeTextInAbouts < ActiveRecord::Migration
  def up
    change_column :abouts, :text, :text, :limit => nil
  end

  def down
    change_column :abouts, :text, :text
  end
end
