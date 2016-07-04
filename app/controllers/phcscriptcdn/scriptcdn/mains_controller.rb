require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::MainsController < ApplicationController

		# Security & Action Filters
		layout '/layouts/phcscriptcdn/application.html.erb'
		before_action :set_scriptcdn_main, only: [:edit, :update, :destroy]

		# Script CDN Backend Index
		def index
			@scriptcdn_mains = Scriptcdn::Main.all
		end

		# New Script Listing
		def new
			@scriptcdn_main = Scriptcdn::Main.new
		end

		# Edit Script Listing
		def edit
		end

		# POST Script CDN
		def create
			@scriptcdn_main = Scriptcdn::Main.new(scriptcdn_main_params)
			if @scriptcdn_main.save
				redirect_to scriptcdn_mains_path, notice: 'Script was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT Script
		def update
			if @scriptcdn_main.update(scriptcdn_main_params)
				redirect_to scriptcdn_mains_path, notice: 'Script was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE Script
		def destroy
			@scriptcdn_main.destroy
			redirect_to scriptcdn_mains_path, notice: 'Main was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_scriptcdn_main
			@scriptcdn_main = Scriptcdn::Main.find(params[:id])
		end

		# Whitelist
		def scriptcdn_main_params
			params.require(:scriptcdn_main).permit(:scriptname)
		end

	end
end
