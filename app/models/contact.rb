class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :description, :facebook, :twitter, :linkedin, :contacttext, :messagetext, :thankstext, :avatar
  attr_accessor :message
  
  has_attached_file :avatar, styles: {
      medium: '274x300>'
    }
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["Name", "Email"]
      csv << []
      all.each do |contact|
        csv << [contact.name, contact.email]
      end
    end
  end
  
end
