class Room < ApplicationRecord
    has_many :users , through: :messages
    has_many :messages
end
