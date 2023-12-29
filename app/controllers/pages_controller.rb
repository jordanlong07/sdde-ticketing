class PagesController < ApplicationController
    def index
        @tickets = Ticket.all
        puts @tickets
    end
end
