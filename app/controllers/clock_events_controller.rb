class ClockEventsController < ApplicationController
  def index
  end

  def create
    pp params
    redirect_to clock_events_index_url
  end
end
