class TimeGettersController < ApplicationController
  include CalcTest
  include AsaiVis
  before_action :set_time_getter, only: [:show, :edit, :update, :destroy]

  # GET /time_getters
  # GET /time_getters.json
  def index
    @time_getters = TimeGetter.all
    @calc =  calc(1,4)
    @array = getHtml
  end

  # GET /time_getters/1
  # GET /time_getters/1.json
  def show
  end

  # GET /time_getters/new
  def new
    @time_getter = TimeGetter.new
  end

  # GET /time_getters/1/edit
  def edit
  end

  # POST /time_getters
  # POST /time_getters.json
  def create
    @time_getter = TimeGetter.new(time_getter_params)

    respond_to do |format|
      if @time_getter.save
        format.html { redirect_to @time_getter, notice: 'Time getter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @time_getter }
      else
        format.html { render action: 'new' }
        format.json { render json: @time_getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_getters/1
  # PATCH/PUT /time_getters/1.json
  def update
    respond_to do |format|
      if @time_getter.update(time_getter_params)
        format.html { redirect_to @time_getter, notice: 'Time getter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @time_getter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_getters/1
  # DELETE /time_getters/1.json
  def destroy
    @time_getter.destroy
    respond_to do |format|
      format.html { redirect_to time_getters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_getter
      @time_getter = TimeGetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_getter_params
      params.require(:time_getter).permit(:datetime, :html)
    end
end
