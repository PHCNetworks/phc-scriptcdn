require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Scriptcdn::AuthorsController < ApplicationController

		# Security & Action Filters
		layout '/layouts/phcscriptcdn/application.html.erb'
		before_action :set_scriptcdn_author, only: [:edit, :update, :destroy]

		# Author Index
		def index
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_authors = scriptcdn_main.authors
		end

		# New Author
		def new
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_author = scriptcdn_main.authors.build
		end

		# Edit Author
		def edit
			scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_author = scriptcdn_main.authors.find(params[:id])
		end

		# POST Author
		def create
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_author = @scriptcdn_main.authors.create(scriptcdn_author_params)
			if @scriptcdn_author.save
				redirect_to scriptcdn_main_authors_path, notice: 'Author was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT Author
		def update
			if @scriptcdn_author.update(scriptcdn_author_params)
				redirect_to scriptcdn_main_authors_path, notice: 'Author was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE Author
		def destroy
			@scriptcdn_main = Scriptcdn::Main.find(params[:main_id])
			@scriptcdn_author = @scriptcdn_main.authors.find(params[:id])
			@scriptcdn_author.destroy
				redirect_to scriptcdn_main_authors_path, notice: 'Author was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_scriptcdn_author
			@scriptcdn_author = Scriptcdn::Author.find(params[:id])
		end

		# Whitelist
		def scriptcdn_author_params
			params.require(:scriptcdn_author).permit(:authorfirstname, :authorlastname, :authorwebsite, :authorgithub, :authortwitter, :main_id)
		end

	end
end
