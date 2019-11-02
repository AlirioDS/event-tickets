class DashboardController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource :event, :only => :index

  def index
    @events = Event.all
    @tickets = Ticket.where(user_id: current_user.id)
  end

  def create_ticket
    @ticket = Ticket.new(event_id: params["event_id"])
    @ticket.user_id = current_user.id
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to root_path, notice: 'El Ticket Fue Creado.' }
        format.json { render root_path, status: :created, location: @ticket }
      else
        format.html { render root_path }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_ticket
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to root_path, alert: 'El Ticket fue Eliminado.' }
      format.json { head :no_content }
    end
  end

end
