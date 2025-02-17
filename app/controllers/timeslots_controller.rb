class TimeslotsController < ApplicationController

  def show
    @timeslot = Timeslot.find(params[:id])
  end

  def new
    @timeslot = Timeslot.new
  end

  def index
    @timeslot = Timeslot.all
  end

  def create
    @timeslot = Timeslot.new(timeslot_params)
    if @timeslot.save
      flash[:success] = "Timeslot created."
      redirect_to @timeslot
    else
      flash[:danger] = @timeslot.errors.full_messages
      redirect_to newslot_url
    end
  end

  private

  def timeslot_params
      params.require(:timeslot).permit(:table, :datetime, :capacity)
  end

end
