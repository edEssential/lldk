class AddFacebookAndTwitterAndLinkedinToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :facebook, :string
    add_column :abouts, :twitter, :string
    add_column :abouts, :linkedin, :string
  end
end
