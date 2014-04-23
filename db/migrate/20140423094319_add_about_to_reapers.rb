class AddAboutToReapers < ActiveRecord::Migration
  def change
    add_column :reapers, :about, :text, :limit => nil
  end
end
