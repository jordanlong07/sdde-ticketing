class TicketsController < ApplicationController
    before_action :authenticate_user!
    def new
        @ticket = Ticket.new
    end

    def create
        @ticket = Ticket.new(new_ticket_params)
        @ticket.status = "Open"
        render :new unless @ticket.save
        redirect_to root_path
 
      end
    
    def show
      if Ticket.exists?(params[:id])
        @ticket = Ticket.find(params[:id])
      else
        redirect_to root_path
      end
    end

    
      private
      def new_ticket_params
        ticket_params = params.require(:ticket).permit(:title, :priority, :ticket_description, :due_date, :assigned_to, :assigned_by)
      end
end
