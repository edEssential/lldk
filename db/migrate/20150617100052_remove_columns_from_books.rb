class RemoveColumnsFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :promotions1
    remove_column :books, :promotions2
    remove_column :books, :promotions3
    remove_column :books, :reviewfeed
    remove_column :books, :link4title
    remove_column :books, :link5title
    remove_column :books, :link6title
    remove_column :books, :homepageintro
    remove_column :books, :review1
    remove_column :books, :review2
    remove_column :books, :review3
  end

  def down
    add_column :books, :promotions1, :string
    add_column :books, :promotions2, :string
    add_column :books, :promotions3, :string
    add_column :books, :reviewfeed, :string
    add_column :books, :link4title, :string
    add_column :books, :link5title, :string
    add_column :books, :link6title, :string
    add_column :books, :homepageintro, :string
    add_column :books, :review1, :string
    add_column :books, :review2, :string
    add_column :books, :review3, :string
  end
end
