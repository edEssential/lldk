class AddTextAndGetintouchtextToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :text, :string
    add_column :abouts, :getintouchtext, :string
  end
end
