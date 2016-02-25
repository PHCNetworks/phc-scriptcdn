require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::ScripturlsController < ApplicationController
		# Filters and Security
		before_action :set_scriptcdn_scripturl, only: [:show, :edit, :update, :destroy]

		# Index for Scriptcdn_script URLs
		def index
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scripturls = scriptcdn_script.scripturls
		end

		# Scriptcdn_script URL Details Page
		def show
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scripturl = scriptcdn_script.scripturls.find(params[:id])
		end

		# New Scriptcdn_script URL
		def new
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scripturl = scriptcdn_script.scripturls.build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @scriptcdn_script }
			end
		end

		# Edit Scriptcdn_script URL
		def edit
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scripturl = scriptcdn_script.scripturls.find(params[:id])
		end

		# POST Scriptcdn_script URL
		def create
			@scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scripturl = @scriptcdn_script.scripturls.create(scriptcdn_scripturl_params)
			respond_to do |format|
			if @scriptcdn_scripturl.save
				format.html { redirect_to scriptcdn_script_scripturls_path, notice: 'Comment for Scriptcdn_script was Successfully Created.' }
				format.json { render action: 'show', status: :created, location: @scriptcdn_scripturl }
				else
					format.html { render action: 'new' }
					format.json { render json: @scriptcdn_scripturl.errors, status: :unprocessable_entity }
				end
			end
		end

		# PATCH/PUT Scriptcdn_script URL
		def update
			respond_to do |format|
			if @scriptcdn_scripturl.update(scriptcdn_scripturl_params)
				format.html { redirect_to scriptcdn_script_scripturls_path, notice: 'Comment for Scriptcdn_script was Successfully Updated.' }
				format.json { head :no_content }
				else
					format.html { render action: 'edit' }
					format.json { render json: @scriptcdn_scripturl.errors, status: :unprocessable_entity }
				end
			end
		end

		# Delete Scriptcdn_script URL
		def destroy
			@scriptcdn_script = Scriptcdn::Scriptcdn_script.find(params[:script_id])
			@scriptcdn_scripturl = @scriptcdn_script.scripturls.find(params[:id])
			@scriptcdn_scripturl.destroy
			respond_to do |format|
				format.html { redirect_to scriptcdn_script_scripturls_path, notice: 'Comment for Scriptcdn_script was Successfully Deleted.'  }
				format.json { head :no_content }
			end
		end

		private
		
		# Callback
		def set_scriptcdn_scripturl
			@scriptcdn_scripturl = Scriptcdn::Script.find(params[:id])
		end

		# Whitelist
		def scriptcdn_scripturl_params
			params.require(:scriptcdn_scripturl).permit(:scrpturlname, :scrpturlphc, :scrpturltype, :scriptversion_id)
		end
	end
end
