class User < ActiveRecord::Base
  
  has_attached_file :image, default_url: "noprofile.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :posts
  has_many :comments

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "noprofile.jpeg"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


end










