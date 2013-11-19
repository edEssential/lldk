class ChangeContentInWritings < ActiveRecord::Migration
  def up
    change_column :writings, :content, :text, :limit => nil 
  end

  def down
    change_column :writings, :content, :string
  end
end