class DropReapers < ActiveRecord::Migration
  def up
     drop_table :reapers
  end

  def down
    create_table :contact do |t|
      t.text :content

      t.timestamps        
    end
  end
end
