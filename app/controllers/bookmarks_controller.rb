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
=begin	
	def show
		@bookmark = Bookmark.find(params[:id])
	end
=end	
	def new
		@bookmark = Bookmark.new
	end
	
	def create
		@bookmark = current_user.bookmarks.new(bookmark_params)
		require 'pismo'
		
		if @bookmark.save
			doc = Pismo::Document.new(@bookmark.website)
			@bookmark.title = doc.titles.last
			@bookmark.save
			redirect_to overview_bookmarks_path
		else
			render :new
		end
	end
	
	def edit
		@bookmark = current_user.bookmarks.find(params[:id])
	end
	
	def update
		@bookmark = current_user.bookmarks.find(params[:id])
		
		if @bookmark.update(bookmark_params)
			doc = Pismo::Document.new(@bookmark.website)
			@bookmark.title = doc.titles.last
			@bookmark.save
			redirect_to overview_bookmarks_path
		else
			render :edit
		end
	end
	
	def destroy
		@bookmark = current_user.bookmarks.find(params[:id])
		@bookmark.destroy
		redirect_to overview_bookmarks_path
	end
	
	
	private
	
	def bookmark_params
		params.require(:bookmark).permit(:website, :category)
	end
end
