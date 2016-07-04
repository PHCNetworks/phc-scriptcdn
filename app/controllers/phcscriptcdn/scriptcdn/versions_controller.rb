require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::VersionsController < ApplicationController

		# Security & Action Filters
		layout '/layouts/phcscriptcdn/application.html.erb'
		before_action :set_scriptcdn_version, only: [:edit, :update, :destroy]

		# Script Version Index
		def index
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_versions = scriptcdn_main.versions
		end

		# New Script Version
		def new
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_version = scriptcdn_main.versions.build
		end

		# Edit Script Version
		def edit
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_version = scriptcdn_main.versions.find(params[:id])
		end

		# POST Script Version
		def create
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_version = @scriptcdn_main.versions.create(scriptcdn_version_params)
			if @scriptcdn_version.save
				redirect_to scriptcdn_main_versions_path, notice: 'Script version was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT Script Version
		def update
			if @scriptcdn_version.update(scriptcdn_version_params)
				redirect_to scriptcdn_main_versions_path, notice: 'Script version was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE Script Version
		def destroy
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_version = @scriptcdn_main.versions.find(params[:id])
			@scriptcdn_version.destroy
				redirect_to scriptcdn_main_versions_path, notice: 'Script version was successfully destroyed.'
		end

		private

		# Callbacks
		def set_scriptcdn_version
			@scriptcdn_version = Scriptcdn::Version.find(params[:id])
		end

		# Whitelist
		def scriptcdn_version_params
			params.require(:scriptcdn_version).permit(:versionnumber, :main_id)
		end

	end
end
