class AddBoxsetlinkToBooks < ActiveRecord::Migration
  def change
    add_column :books, :boxset_link, :string
  end
end
