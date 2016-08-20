require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Script::AuthorsController < ApplicationController

		# Filters & Security
		before_action :set_script_author, only: [:show, :edit, :update, :destroy]

		# INDEX - Script Authors
		def index
			script_listing = Script::Listing.find(params[:listing_id])
			@script_authors = script_listing.authors
		end

		# DETAILED PROFILE - Script Authors
		def show
			script_listing = Script::Listing.find(params[:listing_id])
			@script_author = script_listing.authors.find(params[:id])
		end

		# NEW - Script Athors
		def new
			script_listing = Script::Listing.find(params[:listing_id])
			@script_author = script_listing.authors.build
		end

		# EDIT - Script Athors
		def edit
			script_listing = Script::Listing.find(params[:listing_id])
			@script_author = script_listing.authors.find(params[:id])
		end

		# POST - Script Athors
		def create
			@script_listing = Script::Listing.find(params[:listing_id])
			@script_author = @script_listing.authors.create(script_author_params)
			if @script_author.save
				redirect_to script_listing_authors_path, notice: 'Author was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Script Athors
		def update
			if @script_author.update(script_author_params)
				redirect_to script_listing_authors_path, notice: 'Author was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Script Athors
		def destroy
			@script_listing = Script::Listing.find(params[:listing_id])
			@script_author = @script_listing.authors.find(params[:id])
			@script_author.destroy
			redirect_to script_listing_authors_path, notice: 'Author was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_script_author
			@script_author = Script::Author.find(params[:id])
		end

		# Whitelist
		def script_author_params
			params.require(:script_author).permit(:authorfirstname, :authorlastname, :authorwebsite, :authorgithub, :authortwitter, :listing_id)
		end

	end
end
