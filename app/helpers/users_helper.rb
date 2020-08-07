module UsersHelper
  def created_events(user, name, events, title)
    render partial: name, locals: { obj: events, title: title } if user.events.size > 0
  end

  def attended_events(user, name, events, title)
    if user.attended_events.size > 0
      render partial: name, locals: { obj: events, title: title } if events.size > 0
    end
  end
end
