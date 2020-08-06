class Event < ApplicationRecord
  has_many :invitations, foreign_key: :attended_event
  has_many :attendees, through: :invitations, source: :attendee
  belongs_to :creator, class_name: "User"
end
