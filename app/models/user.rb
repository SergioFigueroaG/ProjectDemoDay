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

   has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "follower_id"
   has_many :passive_relationships, class_name:  "Relationship",
                                  foreign_key: "followed_id"

  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

                                  

#validaciones
  validates :name, presence: true
  validates :username, presence: true
  
  validates :type_user, inclusion: { in: %w(user company),
    message: "%{value} no es un usuario valido" }

  enum type_user: [ :user, :company]

    # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
     following.include?(other_user)
  end
end
