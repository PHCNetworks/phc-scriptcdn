require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Script::ListingsController < ApplicationController

		# Security & Filters
		before_action :set_script_listing, only: [:show, :edit, :update, :destroy]

		# INDEX - Script Listings
		def index
			@script_listings = Script::Listing.all
		end

		# DETAILS - Script Listings
		def show
		end

		# NEW - Script Listings
		def new
		@script_listing = Script::Listing.new
		end

		# EDIT - Script Listings
		def edit
		end

		# POST - Script Listings
		def create
			@script_listing = Script::Listing.new(script_listing_params)
			if @script_listing.save
				redirect_to @script_listing, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Script Listings
		def update
			if @script_listing.update(script_listing_params)
				redirect_to @script_listing, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Script Listings
		def destroy
			@script_listing.destroy
			redirect_to script_listings_url, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_script_listing
			@script_listing = Script::Listing.find(params[:id])
		end

		# Whitelist
		def script_listing_params
			params.require(:script_listing).permit(:scripttitle, :scriptdescription, :scriptcategory, :scriptwebsite, :scripttwitter, :scriptgithub, :scriptinitialrelease, :scriptlicence, :scriptplatform, :scriptstatus)
		end

	end
end
