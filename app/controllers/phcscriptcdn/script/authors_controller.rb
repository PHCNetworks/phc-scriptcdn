require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::AuthorsController < ApplicationController

    # Filters & Security
    before_action :set_script_author, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Author
    def index
      @script_authors = Script::Author.all
    end

    # DETAILS - Script Author
    def show
    end

    # NEW - Script Author
    def new
      @script_author = Script::Author.new
    end

    # EDIT - Script Author
    def edit
    end

    # CREATE - Script Author
    def create
      @script_author = Script::Author.new(script_author_params)
      if @script_author.save
        redirect_to script_authors_url, notice: 'Author was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Script Author
    def update
      if @script_author.update(script_author_params)
        redirect_to script_authors_url, notice: 'Author was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Author
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
      params.require(:script_author).permit(:authorfirstname, :authorlastname, :authorwebsite, :authorgithub, :authortwitter, :slug, :user_id, :user_name)
    end

  end
end
