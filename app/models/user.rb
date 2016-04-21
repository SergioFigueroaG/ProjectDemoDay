class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
#relaciones
  has_many :events
  
  has_many :user_events
  has_many :calevents, through: :user_events, :source => 'event'

  has_many :inviteds
  has_many :invevents,  through: :inviteds, :source => 'event'

  has_many :partner_events
  has_many :partevents,  through: :partner_events, :source => 'event'

  has_many :feedbacks
  has_many :feedevents,  through: :feedbacks, :source => 'event'
#validaciones
  validates :name, presence: true
  validates :username, presence: true
  
  validates :type_user, inclusion: { in: %w(user company),
    message: "%{value} no es un usuario valido" }

  enum type_user: [ :user, :company]

  def is_invited(event_id)
    event = Event.find(event_id)
    if event.private
    self.invevents.pluck(:id).include?(event_id)
    else
      true
    end
  end

end
