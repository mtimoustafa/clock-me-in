class ClockEventsController < ApplicationController
  def index
    @clock_events = ClockEvent.all
  end

  def show
    @clock_event = ClockEvent.find(params[:id])
  end

  def create
    @clock_event = ClockEvent.new(permitted_clock_event_params)

    if (@clock_event.save)
      redirect_to clock_events_index_url
    else
      @clock_events = ClockEvent.all
      render 'index'
    end
  end

  def update
    @clock_event = ClockEvent.find(params[:id])
    
    if @clock_event.update(permitted_clock_event_params)
      redirect_to clock_events_index_url
    else
      render 'show'
    end
  end

  def destroy
    @clock_event = ClockEvent.find(params[:id])
    @clock_event.destroy

    redirect_to clock_events_index_url
  end

  private

  def permitted_clock_event_params
    params[:clock_event].permit(:name, :clock_type)
  end
end
