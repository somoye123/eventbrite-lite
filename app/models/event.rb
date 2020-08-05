class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
end

# has_many :invitations, foreign_key: :attended_event_id
#   has_many :attenders, through: :invitations, source: :event_attender
