require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::InformationsController < ApplicationController

		# Security & Action Filters
		layout '/layouts/phcscriptcdn/application.html.erb'
		before_action :set_scriptcdn_information, only: [:edit, :update, :destroy]

		# Script Information Index
		def index
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_informations = scriptcdn_main.informations
		end

		# New Script Information
		def new
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_information = scriptcdn_main.informations.build
		end

		# Edit Script Information
		def edit
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_information = scriptcdn_main.informations.find(params[:id])
		end

		# POST Script Information
		def create
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_information = @scriptcdn_main.informations.create(scriptcdn_information_params)
			if @scriptcdn_information.save
				redirect_to scriptcdn_main_informations_path, notice: 'Script information was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT Script Information
		def update
			if @scriptcdn_information.update(scriptcdn_information_params)
				redirect_to scriptcdn_main_informations_path, notice: 'Script information was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE Script Information
		def destroy
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_information = @scriptcdn_main.informations.find(params[:id])
			@scriptcdn_information.destroy
				redirect_to scriptcdn_main_informations_path, notice: 'Script information was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_scriptcdn_information
			@scriptcdn_information = Scriptcdn::Information.find(params[:id])
		end

		# Whitelist
		def scriptcdn_information_params
			params.require(:scriptcdn_information).permit(:scripttitle, :scriptdescription, :scriptcategory, :scriptwebsite, :scripttwitter, :scriptgithub, :scriptinitialrelease, :scriptlicence, :scriptplatform, :scriptstatus, :main_id)
		end

	end
end
