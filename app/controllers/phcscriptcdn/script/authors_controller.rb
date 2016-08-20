require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
	class Script::AuthorsController < ApplicationController

		# Filters & Security
		before_action :set_script_author, only: [:show, :edit, :update, :destroy]

		# INDEX - Script Athors
		def index
		@script_authors = Script::Author.all
		end

		# DETAILED PROFILE - Script Athors
		def show
		end

		# NEW - Script Athors
		def new
		@script_author = Script::Author.new
		end

		# EDIT - Script Athors
		def edit
		end

		# POST - Script Athors
		def create
			@script_author = Script::Author.new(script_author_params)
			if @script_author.save
				redirect_to script_authors_url, notice: 'Author was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT - Script Athors
		def update
			if @script_author.update(script_author_params)
				redirect_to script_authors_url, notice: 'Author was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE - Script Athors
		def destroy
			@script_author.destroy
			redirect_to script_authors_url, notice: 'Author was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_script_author
			@script_author = Script::Author.find(params[:id])
		end

		# Whitelist
		def script_author_params
			params.require(:script_author).permit(:authorfirstname, :authorlastname, :authorwebsite, :authorgithub, :authortwitter, :main_id)
		end

	end
end
