class AddLink1titleAndLink2titleAndLink3titleAndLink4titleAndLink5titleAndLink6titleToBooks < ActiveRecord::Migration
  def change
    add_column :books, :link1title, :string
    add_column :books, :link2title, :string
    add_column :books, :link3title, :string
    add_column :books, :link4title, :string
    add_column :books, :link5title, :string
    add_column :books, :link6title, :string
  end
end
