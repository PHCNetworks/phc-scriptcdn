require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::LicencesController < ApplicationController

    # Filters & Security
    before_action :set_script_licence, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Licences
    def index
      @script_licences = Script::Licence.all
    end

    # DETAILS - Script Licences
    def show
    end

    # NEW - Script Licences
    def new
      @script_licence = Script::Licence.new
    end

    # EDIT - Script Licences
    def edit
    end

    # POST - Script Licences
    def create
      @script_licence = Script::Licence.new(script_licence_params)
      if @script_licence.save
        redirect_to script_licences_url, notice: 'Licence was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT - Script Licences
    def update
      if @script_licence.update(script_licence_params)
        redirect_to script_licences_url, notice: 'Licence was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Licences
    def destroy
      @script_licence.destroy
      redirect_to script_licences_url, notice: 'Licence was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_licence
      @script_licence = Script::Licence.find(params[:id])
    end

    # Whitelists
    def script_licence_params
      params.require(:script_licence).permit(:lcncname, :lcncdescription, :lcncdescript, :lcnccomgpl, :lcncarvlfsf, :lcncarvlosi, :lcncarvlcopyfree, :lcncarvldebian, :lcncarvlfedora, :user_id, :user_name)
    end

  end
end
