class User < ActiveRecord::Base
  
  has_attached_file :image, default_url: "noprofile.jpeg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :posts
  has_many :comments

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 2 }
  validates :password, presence: true
  validates :password, length: { minimum: 6 }

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "noprofile.jpeg"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


end










