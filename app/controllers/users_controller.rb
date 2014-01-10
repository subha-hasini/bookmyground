class UsersController < ApplicationController
  # def new
  # 	@user = User.new
  # end
  def new
      @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
	      redirect_to root_url
	      #redirect_to :action => 'list', :id => @grounds
	      flash[:notice] = "AAAAAA"
      else
		Rails.logger.debug "INSIDE ELSE"
            flash[:notice] = "BBBBBBB"
            #render :action => 'new'

      end
   end
   def list
   		redirect_to :action => 'grounds#list'
   end
end
