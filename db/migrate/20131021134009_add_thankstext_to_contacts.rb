class AddThankstextToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :thankstext, :text
  end
end
