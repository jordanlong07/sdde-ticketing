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
      @priority_colour_map = {
        "Low" => "green",
        "Medium" => "#f97316",
        "High" => "red"
      }
      @due_date_expired = true
      if Ticket.exists?(params[:id])
        @ticket = Ticket.find(params[:id])
        @due_date_expired = @ticket.due_date < Date.today unless @ticket.due_date.nil?
      else
        redirect_to root_path
      end
    end

    def edit
      if Ticket.exists?(params[:id])
        @ticket = Ticket.find(params[:id])
        if @ticket.assigned_to.to_s != current_user.id.to_s || @ticket.assigned_by != current_user.user_name
          redirect_to root_path
        end

      else
        redirect_to root_path
      end
    end

    def update
      @ticket = Ticket.find(params[:id])
      render :edit unless @ticket.update(new_ticket_params)
      redirect_to ticket_path(@ticket)
    end

    def my_tickets
      @priority_colour_map = {
        "Low" => "green",
        "Medium" => "#f97316",
        "High" => "red"
      }
      @tickets = Ticket.where(assigned_to: current_user.id)
    end

    def destroy
      @ticket = Ticket.find(params[:id])
      @ticket.destroy
      redirect_to root_path
    end
    
      private
      def new_ticket_params
        ticket_params = params.require(:ticket).permit(:title, :priority, :ticket_description, :due_date, :assigned_to, :assigned_by)
      end
end
