class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :rooms, through: :rooms
  has_many :assessments
  has_many :rooms, through: :assessments
  has_many :departament, through: :assessments

  enum role: [:student, :teacher, :admin]

  def to_s
    name
  end

  def is?( requested_role )
    self.role == requested_role.to_s
  end
end
