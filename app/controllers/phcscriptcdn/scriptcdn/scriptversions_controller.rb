require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::ScriptversionsController < ApplicationController

		# Filters and Security
		before_action :set_scriptcdn_scriptversion, only: [:edit, :update, :destroy]

		# Script Version Index
		def index
			@scriptcdn_scriptversions = Scriptcdn::Scriptversion.all
		end

		# New Script Version for CDN
		def new
			@scriptcdn_scriptversion = Scriptcdn::Scriptversion.new
		end

		# Edit Script Version
		def edit
		end

		# POST Script Version
		def create
			@scriptcdn_scriptversion = Scriptcdn::Scriptversion.new(scriptcdn_scriptversion_params)

			if @scriptcdn_scriptversion.save
				redirect_to scriptcdn_scriptversions_path, notice: 'Scriptversion was successfully created.'
			else
				render :new
			end
		end

		# PATCH/PUT Script Version
		def update
			if @scriptcdn_scriptversion.update(scriptcdn_scriptversion_params)
				redirect_to scriptcdn_scriptversions_path, notice: 'Scriptversion was successfully updated.'
			else
				render :edit
			end
		end

		# DELETE Script Version
		def destroy
			@scriptcdn_scriptversion.destroy
			redirect_to scriptcdn_scriptversions_path, notice: 'Scriptversion was successfully destroyed.'
		end

		private
		
		# Callbacks
		def set_scriptcdn_scriptversion
			@scriptcdn_scriptversion = Scriptcdn::Scriptversion.find(params[:id])
		end

		# Whitelist
		def scriptcdn_scriptversion_params
			params.require(:scriptcdn_scriptversion).permit(:scrptversion)
		end

	end
end
