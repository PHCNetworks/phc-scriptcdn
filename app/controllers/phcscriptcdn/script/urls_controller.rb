require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Script::UrlsController < ApplicationController

		# Filters & Security
		before_action :set_script_url, only: [:show, :edit, :update, :destroy]

		# INDEX - Script Information/Urls
		def index
			script_listing = Script::Listing.find(params[:information_id])
			@script_urls = script_listing.urls
		end

		# NEW - Script Listing/Urls
		def new
			script_listing = Script::Listing.find(params[:information_id])
			@script_url = script_listing.urls.build
		end

		# EDIT - Script Listing/Urls
		def edit
			script_listing = Script::Listing.find(params[:information_id])
			@script_url = script_listing.urls.find(params[:id])
		end

		# POST - Script Listing/Urls
		def create
			@script_listing = Script::Listing.find(params[:information_id])
			@script_url = @script_listing.urls.create(script_url_params)
			if @script_listing.save
				redirect_to script_listing_urls_path, notice: 'Listing was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Script Listing/Urls
		def update
			if @script_listing.update(member_address_params)
				redirect_to script_listing_urls_path, notice: 'Listing was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Script Listing/Urls
		def destroy
			@script_listing = Script::Listing.find(params[:information_id])
			@script_url = @script_listing.urls.find(params[:id])
			@script_url.destroy
			redirect_to script_listing_urls_path, notice: 'Listing was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_script_url
			@script_url = Script::Url.find(params[:id])
		end

		# Whitelists
		def script_url_params
			params.require(:script_url).permit(:scripturl)
		end

	end
end
