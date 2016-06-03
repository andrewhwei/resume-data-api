class Api::V1::CapstonesController < ApplicationController
  before_action :set_api_v1_capstone, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/capstones
  # GET /api/v1/capstones.json
  def index
    @api_v1_capstones = Api::V1::Capstone.all
  end

  # GET /api/v1/capstones/1
  # GET /api/v1/capstones/1.json
  def show
  end

  # GET /api/v1/capstones/new
  def new
    @api_v1_capstone = Api::V1::Capstone.new
  end

  # GET /api/v1/capstones/1/edit
  def edit
  end

  # POST /api/v1/capstones
  # POST /api/v1/capstones.json
  def create
    @api_v1_capstone = Api::V1::Capstone.new(api_v1_capstone_params)

    respond_to do |format|
      if @api_v1_capstone.save
        format.html { redirect_to @api_v1_capstone, notice: 'Capstone was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_capstone }
      else
        format.html { render :new }
        format.json { render json: @api_v1_capstone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/capstones/1
  # PATCH/PUT /api/v1/capstones/1.json
  def update
    respond_to do |format|
      if @api_v1_capstone.update(api_v1_capstone_params)
        format.html { redirect_to @api_v1_capstone, notice: 'Capstone was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_capstone }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_capstone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/capstones/1
  # DELETE /api/v1/capstones/1.json
  def destroy
    @api_v1_capstone.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_capstones_url, notice: 'Capstone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_capstone
      @api_v1_capstone = Api::V1::Capstone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_capstone_params
      params.fetch(:api_v1_capstone, {})
    end
end
