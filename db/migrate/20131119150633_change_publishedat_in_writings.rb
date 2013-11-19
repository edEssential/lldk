class ChangePublishedatInWritings < ActiveRecord::Migration
  def up
    change_column :writings, :publishedat, :string
  end

  def down
    change_column :writings, :publishedat, :date
  end
end
