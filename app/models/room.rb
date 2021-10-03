class Room < ApplicationRecord
  belongs_to :user
  belongs_to :message

  validates :name, presence: true
end
