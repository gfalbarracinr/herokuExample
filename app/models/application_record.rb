class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  rescue_from ActiveRecord::RecordNotFound, with => :record_not_found
  
  def record_not_found
     render plain "record not found", status: 404 
  end
end
