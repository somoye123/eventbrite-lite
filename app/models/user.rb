class User < ApplicationRecord
    has_many :events, foreign_key: :creator, class_name: 'Event' 
end


# has_many :invitations, foreign_key: :event_attender_id
# has_many :attended_events, through: :invitations
