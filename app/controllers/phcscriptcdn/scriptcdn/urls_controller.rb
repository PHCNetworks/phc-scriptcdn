require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::UrlsController < ApplicationController

		# Security & Action Filters
		layout '/layouts/phcscriptcdn/application.html.erb'
		before_action :set_scriptcdn_url, only: [:edit, :update, :destroy]

		# Index for Script URL
		def index
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_urls = scriptcdn_main.urls
		end

		# New Script URL
		def new
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_url = scriptcdn_main.urls.build
			respond_to do |format|
				format.html # new.html.erb
				format.xml  { render :xml => @scriptcdn_main }
			end
		end

		# Edit Script URL
		def edit
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_url = scriptcdn_main.urls.find(params[:id])
		end

		# POST Script URL
		def create
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_url = @scriptcdn_main.urls.create(scriptcdn_url_params)
			respond_to do |format|
				if @scriptcdn_url.save
					format.html { redirect_to scriptcdn_main_urls_path, notice: 'Script URL was Successfully Created.' }
					format.json { render action: 'show', status: :created, location: @scriptcdn_url }
					else
						format.html { render action: 'new' }
						format.json { render json: @scriptcdn_url.errors, status: :unprocessable_entity }
				end
			end
		end

		# PATCH/PUT Script URL
		def update
			respond_to do |format|
				if @scriptcdn_url.update(scriptcdn_url_params)
					format.html { redirect_to scriptcdn_main_urls_path, notice: 'Script URL was Successfully Updated.' }
					format.json { head :no_content }
					else
						format.html { render action: 'edit' }
						format.json { render json: @scriptcdn_url.errors, status: :unprocessable_entity }
				end
			end
		end

		# Delete Script URL
		def destroy
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_url = @scriptcdn_main.urls.find(params[:id])
			@scriptcdn_url.destroy
			respond_to do |format|
				format.html { redirect_to scriptcdn_main_urls_path, notice: 'Script URL was Successfully Deleted.'  }
				format.json { head :no_content }
			end
		end

		private

		# Common Callbacks
		def set_scriptcdn_url
			@scriptcdn_url = Scriptcdn::Url.find(params[:id])
		end

		# Whitelist
		def scriptcdn_url_params
			params.require(:scriptcdn_url).permit(:scripturl, :scripturlext, :main_id)
		end

	end
end
