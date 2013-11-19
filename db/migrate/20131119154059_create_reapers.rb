class CreateReapers < ActiveRecord::Migration
  def change
    create_table :reapers do |t|
      t.text :content

      t.timestamps
    end
  end
end
