class BookmarksController < ApplicationController

# Insert the layout called "menu" to get the navigation bar.	
	layout "menu"
# Check if the users have logged in	
	before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
	
	def index
	end
	
	def overview
		@bookmark = Bookmark.all
	end
	
	def show
		@bookmark = Bookmark.find(params[:id])
	end
	
	def new
		@bookmark = Bookmark.new
	end
	
	def create
		@bookmark = Bookmark.new(bookmark_params)
		
		if @bookmark.save
			redirect_to bookmark_path(@bookmark)
		else
			render :new
		end
	end
	
	def edit
		@bookmark = Bookmark.find(params[:id])
	end
	
	def update
		@bookmark = Bookmark.find(params[:id])
		
		if @bookmark.update(bookmark_params)
			redirect_to bookmark_path(@bookmark)
		else
			render :edit
		end
	end
	
	def destroy
		@bookmark = Bookmark.find(params[:id])
		@bookmark.destroy
		redirect_to bookmark_path(@bookmark)
	end
	
	private
	
	def bookmark_params
		params.require(:bookmark).permit(:website)
	end
end
