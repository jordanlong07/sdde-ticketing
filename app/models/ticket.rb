class Ticket < ApplicationRecord
    # get open tickets
    def self.active
        where(status: 'Open')
      end
end
