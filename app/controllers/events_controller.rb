class EventsController < ApplicationController
    before_action :require_user
    
    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create

    end

    def show

    end

end
