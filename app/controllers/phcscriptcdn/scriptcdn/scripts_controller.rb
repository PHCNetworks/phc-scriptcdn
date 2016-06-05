require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::ScriptsController < ApplicationController

		# Filters and Security
		before_action :set_scriptcdn_scriptversion, only: [:show, :edit, :update, :destroy]

		# ScriptCDN Index
		def index
			@scriptcdn_scripts = Scriptcdn::Script.all
			if current_user
				render 'index'
			else
				render 'scriptlist'
			end
		end

		# Detailed Script CDN Profile
		def show
		end

		# New Script for CDN
		def new
			@scriptcdn_script = Scriptcdn::Script.new
		end

		# Edit Script
		def edit
		end

		# POST Script
		def create
			@scriptcdn_script = Scriptcdn::Script.new(scriptcdn_script_params)

			if @scriptcdn_script.save
				redirect_to scriptcdn_scripts_path, notice: 'Script listing was successfully created.'
			else
				render :new
			end
		end

		# PATCH/PUT Script
		def update
			if @scriptcdn_script.update(scriptcdn_script_params)
				redirect_to scriptcdn_scripts_path, notice: 'Script listing was successfully updated.'
			else
				render :edit
			end
		end

		# DELETE Script from CDN
		def destroy
			@scriptcdn_script.destroy
			redirect_to scriptcdn_scripts_path, notice: 'Script listing & Script URLs was successfully destroyed.'
		end

		private

		# Grab User Session Key (For ID)
		def current_user
			@_current_user ||= AuthRocket::Session.from_token(session[:ar_token]).try(:user)
		end

		# Callbacks
		def set_scriptcdn_script
			@scriptcdn_script = Scriptcdn::Script.find(params[:id])
		end

		# Whitelist
		def scriptcdn_script_params
			params.require(:scriptcdn_script).permit(:scrptname, :scrptdescription, :scriptversion_id)
		end

	end
end
