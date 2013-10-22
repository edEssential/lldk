class Book < ActiveRecord::Base
  attr_accessible :buylink1, :buylink2, :buylink3, :promotions1, :promotions2, :promotions3, :reviewfeed, :synopsis, :cover, :link1title, :link2title, 
  :link3title, :link4title, :link5title, :link6title, :title, :homepageintro, :review1, :review2, :review3, :packshot

    # This method associates the attribute ":avatar" with a file attachment
    has_attached_file :cover, styles: {
      rectangle: '915x194>'
    }
    has_attached_file :packshot, styles: {
        thumb: '142X179>'
    }
  
end
