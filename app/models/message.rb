class Message < ApplicationRecord
    has_many :rooms

    validates :content, presence: true
end
