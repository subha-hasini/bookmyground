class Ground < ActiveRecord::Base
  attr_accessible :name, :ground_type, :city_id, :price, :bdate, :session, :is_available
  belongs_to :city 
end
