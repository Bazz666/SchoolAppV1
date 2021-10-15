class Message < ApplicationRecord
  belongs_to :user , optional: true
  belongs_to :room, optional: true

  after_create_commit {
    MessageBroadcastJob.perform_later(self)
  }

  def to_s
    name
  end


end
