class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  scope :recent_user_activity, -> myDate {
    puts "Is this working?"
  }
end
