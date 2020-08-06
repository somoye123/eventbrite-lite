class User < ApplicationRecord
    has_many :events, foreign_key: :creator, class_name: 'Event' 
    has_many :invitations, foreign_key: :attendee
    has_many :attended_events, through: :invitations
end
