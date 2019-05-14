require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::AuthorsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_author, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Author
    def index
      @script_authors = Script::Author.all
    end

    # DETAILS - Script Author
    def show
      @script_authors = Script::Author.friendly.find(params[:id])
      @versions = Phcscriptcdn::AuthorVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script::Author')
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
      @script_author.user_id = current_user.id
      if @script_author.save
        redirect_to script_authors_url, :flash => { :success => 'Author was successfully created.' }
        else
        render :new
      end
    end

    # PATCH/PUT - Script Author
    def update
      if @script_author.update(script_author_params)
          redirect_to script_authors_url, :flash => { :success => 'Author was successfully updated.' }
          else
            render :edit
      end
    end

    # DELETE - Script Author
    def destroy
      @script_author.destroy
      redirect_to script_authors_url, :flash => { :error => 'Author was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_script_author
      @script_author = Script::Author.friendly.find(params[:id])
    end

    # Whitelist
    def script_author_params
      params.require(:script_author).permit(:author_first_name, :author_last_name, :author_website, :author_github, :slug, :user_id, :listing_id)
    end

  end
end
