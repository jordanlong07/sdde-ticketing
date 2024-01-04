class PagesController < ApplicationController

    def index
        @priority_colour_map = {
            "Low" => "green",
            "Medium" => "#f97316",
            "High" => "red"
        }
        @tickets = Ticket.active
        
    end
end
