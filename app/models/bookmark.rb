class Bookmark < ActiveRecord::Base
	validates :website, presence: true
	
	belongs_to :owner, class_name: "User", foreign_key: :user_id
	
end
