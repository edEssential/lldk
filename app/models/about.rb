class About < ActiveRecord::Base
  attr_accessible :getintouchtext, :text, :avatar, :facebook, :twitter, :linkedin
  has_attached_file :avatar, 
                    :s3_protocol => 'https',
                    styles: {
      medium: '274x300>'
    }
end
