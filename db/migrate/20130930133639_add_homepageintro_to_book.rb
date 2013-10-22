class AddHomepageintroToBook < ActiveRecord::Migration
  def change
    add_column :books, :homepageintro, :string
  end
end
