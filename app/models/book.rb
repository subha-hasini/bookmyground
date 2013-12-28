class Book < ActiveRecord::Base
  	attr_accessible :title, :description, :price, :subject_id
	belongs_to :subject
#	validates_presence_of :title
#	validates_numericality_of :price, :message=>"Error Message"
	Rails.logger.debug "TTTTTTTTTTTT"
end
