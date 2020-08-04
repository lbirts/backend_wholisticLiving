class Appointment < ApplicationRecord
    belongs_to :provider
    belongs_to :client
    after_validation :set_status, only: [:create, :update]

    private
  
    def set_status
      if (Time.now >= self.date_time + 30*60) && (self.status != "Cancelled")
        self.status = "Completed"
      end
    end 
end
