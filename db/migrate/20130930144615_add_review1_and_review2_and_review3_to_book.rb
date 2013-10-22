class AddReview1AndReview2AndReview3ToBook < ActiveRecord::Migration
  def change
    add_column :books, :review1, :string
    add_column :books, :review2, :string
    add_column :books, :review3, :string
  end
end
