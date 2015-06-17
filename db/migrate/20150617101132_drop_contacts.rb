class DropContacts < ActiveRecord::Migration
  def up
     drop_table :contacts
  end

  def down
    create_table :contact do |t|
      t.string :name
      t.string :email

      t.timestamps        
    end
  end
end
