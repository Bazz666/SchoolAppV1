class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  :omniauthable, omniauth_providers: [:github]
  has_many :messages
  has_many :rooms, through: :messages

  has_many :users_courses_departaments

  has_many :courses, through: :users_courses_departaments
  has_many :departaments, through: :users_courses_departaments
 
  

  enum role: [:student, :teacher, :admin]

  

  def to_s
    name
  end

  def is?( requested_role )
    self.role == requested_role.to_s
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data["email"]).first

    user ||= User.create(
      email: data["email"],
      password: Devise.friendly_token[0, 20]
    )

    user.name = access_token.info.name
   
    user.provider = access_token.provider
    user.uid = access_token.uid
    user.save

    user
  end
end
