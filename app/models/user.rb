class User < ActiveRecord::Base
	scope :recent_user_activity, -> myDate {
		puts "Is this working?"
	}
end
