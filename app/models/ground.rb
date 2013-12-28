class Ground < ActiveRecord::Base
  attr_accessible :name, :ground_type, :city_id, :price, :bdate, :session
  belongs_to :city 
end
