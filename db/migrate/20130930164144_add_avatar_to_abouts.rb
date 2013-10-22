class AddAvatarToAbouts < ActiveRecord::Migration
  def self.up
      add_attachment :abouts, :avatar
    end

    def self.down
      remove_attachment :abouts, :avatar
    end
end
