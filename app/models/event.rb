class Event < ActiveRecord::Base
	include SimpleHashtag::Hashtaggable
	hashtaggable_attribute :description

	mount_uploader :img, EventImgUploader

	belongs_to :user

	has_many :inviteds
	has_many :userinviteds, through: :inviteds, :source => 'user'

	has_many :user_events	
	has_many :assistants, through: :user_events, :source => 'user'
	
	has_many :partner_events
	has_many :userpartner, through: :partner_events, :source => 'user'

	has_many :feedbacks
	has_many :userfeed, through: :feedbacks, :source => 'user'
	
	#validaciones
	validates :title,:description,:name_place,:address,:capacity,:user_id, presence: true
	validates :des_partner, :presence => true, :if => :need_partner
	validates :capacity, numericality: { greater_than: 0}
	
end
