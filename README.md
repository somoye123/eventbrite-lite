# Members Only Rails Application

In this project, we built a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties. Events take place at a specific date and at a location.

## Built With

- Ruby on Rails
- Ruby

# Getting Started

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

~~~bash
$ git clone https://github.com/somoye123/eventbrite-lite.git
$ cd eventbrite-lite
$ bundle install 
$ yarn install --check-files
$ rails db:migrate
~~~

# Authors

👤 **Somoye**

- Github:[@somoye123](https://github.com/somoye123)
- Twitter:[@ayotunde_197](https://twitter.com/ayotunde_197)
- LinkedIn:[Somoye Ayotunde](https://www.linkedin.com/in/somoye-ayotunde-03a471161)


👤 **Uduak Essien**

- Github: [@acushlakoncept](https://github.com/acushlakoncept/)
- Twitter: [@acushlakoncept](https://twitter.com/acushlakoncept)
- Linkedin: [acushlakoncept](https://www.linkedin.com/in/acushlakoncept/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!




You want to build a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

A user can create events. A user can attend many events. An event can be attended by many users. This will require you to model many-to-many relationships and also to be very conscious about your foreign keys and class names (hint: you won’t be able to just rely on Rails’ defaults like you have before).


class User < ActiveRecord::Base
    has_many :invitations, foreign_key: :event_attender_id
    has_many :attended_events, through: :invitations
    has_many :created_events, foreign_key: :creator_id, class_name: "Event"
end

  class Event < ActiveRecord::Base
    has_many :invitations, foreign_key: :attendee_event_id
    has_many : attenders, through: :invitations, source: :event_attender
    belongs_to :creator, class_name: "User"
  end

   class invitations < ActiveRecord::Base
    belongs_to :event_attender, class_name: "User"
    belongs_to :attended_event, class_name: "Event"
  end

  
users	 
  name	string
events	 
  location string
  name string
  description text
  date  datetime
  <!-- user_id	integer -->
  creator_id	integer
invitations	 
  attended_event_id	integer
  event_attender_id	integer
  
