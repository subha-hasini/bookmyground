class GroundsController < ApplicationController
	def list
      @grounds = Ground.find(:all)
   end
   def show
      @ground = Ground.find(params[:id])
   end
   def new
      @ground = Ground.new
	   @cities = City.find(:all)
		Rails.logger.debug "INSIDE"
   end
   def create
      @ground = Ground.new(params[:ground])
      Rails.logger.debug "KKKKKKKK"
      Rails.logger.debug @ground.bdate
      Rails.logger.debug @ground.name
      if @ground.save
		Rails.logger.debug "INSIDE IF"
            redirect_to :action => 'list'
      else
		Rails.logger.debug "INSIDE ELSE"
            @cities = City.find(:all)
            render :action => 'new'
      end
   end
   def edit
      @ground = Ground.find(params[:id])
      @cities = City.find(:all)
   end
   def update
      @ground = Ground.find(params[:id])
      if @grounds.update_attributes(params[:ground])
         redirect_to :action => 'show', :id => @grounds
      else
         @cities = City.find(:all)
         render :action => 'edit'
      end
   end
   def delete
      Ground.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   def show_cities
      @city = City.find(params[:id])
   end

end
