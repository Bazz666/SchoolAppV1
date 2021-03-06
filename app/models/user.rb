class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  :omniauthable, omniauth_providers: [:github]
  has_many :messages, dependent: :destroy
  has_many :rooms, through: :messages

  has_many :course_departament_users, dependent: :destroy

  has_many :courses, through: :course_departament_users, dependent: :destroy
  has_many :departaments, through: :course_departament_users
 
  

  enum role: [:student, :teacher, :admin]

  # before_create :user_default

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
  private
    def user_default
    self.role = :"student"
    end
  
end
