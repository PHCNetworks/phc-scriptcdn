require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Scriptcdn::MainsController < ApplicationController
    before_action :set_scriptcdn_main, only: [:show, :edit, :update, :destroy]

    # GET /scriptcdn/mains
    def index
      @scriptcdn_mains = Scriptcdn::Main.all
    end

    # GET /scriptcdn/mains/1
    def show
    end

    # GET /scriptcdn/mains/new
    def new
      @scriptcdn_main = Scriptcdn::Main.new
    end

    # GET /scriptcdn/mains/1/edit
    def edit
    end

    # POST /scriptcdn/mains
    def create
      @scriptcdn_main = Scriptcdn::Main.new(scriptcdn_main_params)

      if @scriptcdn_main.save
        redirect_to @scriptcdn_main, notice: 'Main was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /scriptcdn/mains/1
    def update
      if @scriptcdn_main.update(scriptcdn_main_params)
        redirect_to @scriptcdn_main, notice: 'Main was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /scriptcdn/mains/1
    def destroy
      @scriptcdn_main.destroy
      redirect_to scriptcdn_mains_url, notice: 'Main was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_scriptcdn_main
        @scriptcdn_main = Scriptcdn::Main.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def scriptcdn_main_params
        params.require(:scriptcdn_main).permit(:scriptname)
      end
  end
end
