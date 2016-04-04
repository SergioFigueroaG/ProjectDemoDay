class Event < ActiveRecord::Base
	belongs_to :user

	has_many :inviteds
	has_many :userinviteds, through: :inviteds, :source => 'user'

	has_many :user_events	
	has_many :assistants, through: :user_events, :source => 'user'
	
	has_many :partner_events
	has_many :userpartner, through: :partner_events, :source => 'user'
  
	has_many :feedbacks
	has_many :userfeed, through: :feedbacks, :source => 'user'
end
