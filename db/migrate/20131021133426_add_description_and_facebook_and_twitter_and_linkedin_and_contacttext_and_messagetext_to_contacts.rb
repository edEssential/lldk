class AddDescriptionAndFacebookAndTwitterAndLinkedinAndContacttextAndMessagetextToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :description, :text
    add_column :contacts, :facebook, :string
    add_column :contacts, :twitter, :string
    add_column :contacts, :linkedin, :string
    add_column :contacts, :contacttext, :text
    add_column :contacts, :messagetext, :text
  end
end
