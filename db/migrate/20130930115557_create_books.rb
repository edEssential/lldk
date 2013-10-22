class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :synopsis
      t.string :buylink1
      t.string :buylink2
      t.string :buylink3
      t.string :promotions1
      t.string :promotions2
      t.string :promotions3
      t.string :reviewfeed

      t.timestamps
    end
  end
end
