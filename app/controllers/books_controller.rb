class BooksController < ApplicationController
   def list
      @books = Book.find(:all)
   end
   def show
      @book = Book.find(params[:id])
   end
   def new
      @book = Book.new
	   @subjects = Subject.find(:all)
		Rails.logger.debug "INSIDE"
   end
   def create
      @book = Book.new(params[:book])
      Rails.logger.debug "KKKKKKKK"
      Rails.logger.debug @book.title
      if @book.save
		Rails.logger.debug "INSIDE IF"
            redirect_to :action => 'list'
      else
		Rails.logger.debug "INSIDE ELSE"
            @subjects = Subject.find(:all)
            render :action => 'new'
      end
   end
   def edit
      @book = Book.find(params[:id])
      @subjects = Subject.find(:all)
   end
   def update
      @book = Book.find(params[:id])
      if @books.update_attributes(params[:book])
         redirect_to :action => 'show', :id => @books
      else
         @subjects = Subject.find(:all)
         render :action => 'edit'
      end
   end
   def delete
      Book.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   def show_subjects
      @subject = Subject.find(params[:id])
   end
end

