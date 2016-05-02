require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::ScriptversionsController < ApplicationController

		# Index for Scriptcdn_script URLs
		def index
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversions = scriptcdn_script.scriptversions
		end

		# Scriptcdn_script URL Details Page
		def show
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversion = scriptcdn_script.scriptversions.find(params[:id])
		end

		# New Scriptcdn_script URL
		def new
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversion = scriptcdn_script.scriptversions.build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @scriptcdn_script }
			end
		end

		# Edit Scriptcdn_script URL
		def edit
			scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversion = scriptcdn_script.scriptversions.find(params[:id])
		end

		# POST Scriptcdn_script URL
		def create
			@scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversion = @scriptcdn_script.scriptversions.create(scriptcdn_scripturl_params)
			respond_to do |format|
				if @scriptcdn_scriptversion.save
					format.html { redirect_to scriptcdn_script_scriptversions_path, notice: 'Script URL was Successfully Created.' }
					format.json { render action: 'show', status: :created, location: @scriptcdn_scriptversion }
					else
						format.html { render action: 'new' }
						format.json { render json: @scriptcdn_scriptversion.errors, status: :unprocessable_entity }
				end
			end
		end

		# PATCH/PUT Scriptcdn_script URL
		def update
			respond_to do |format|
				if @scriptcdn_scriptversion.update(scriptcdn_scripturl_params)
					format.html { redirect_to scriptcdn_script_scriptversions_path, notice: 'Script URL was Successfully Updated.' }
					format.json { head :no_content }
					else
						format.html { render action: 'edit' }
						format.json { render json: @scriptcdn_scriptversion.errors, status: :unprocessable_entity }
				end
			end
		end

		# Delete Scriptcdn_script URL
		def destroy
			@scriptcdn_script = Scriptcdn::Script.find(params[:script_id])
			@scriptcdn_scriptversion = @scriptcdn_script.scriptversions.find(params[:id])
			@scriptcdn_scriptversion.destroy
			respond_to do |format|
				format.html { redirect_to scriptcdn_script_scriptversions_path, notice: 'Script URL was Successfully Deleted.'  }
				format.json { head :no_content }
			end
		end

		private
		
		# Callback
		def set_scriptcdn_scripturl
			@scriptcdn_scriptversion = Scriptcdn::Scripturl.find(params[:id])
		end

		# Whitelist
		def scriptcdn_scripturl_params
			params.require(:scriptcdn_scriptversion).permit(:scrpturlname, :scrpturlphc, :scrpturltype, :scriptversion_id, :script_id)
		end

	end
end
