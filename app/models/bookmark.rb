class Bookmark < ActiveRecord::Base
	validates :website, presence: true

	belongs_to :owner, class_name: "User", foreign_key: :user_id

	# Define a method to distinguish if the user is the owner of the bookmark or not. 
	def editable_by?(user)
		user && user == owner
	end	
end
