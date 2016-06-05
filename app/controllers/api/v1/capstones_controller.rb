class Api::V1::CapstonesController < ApplicationController
  before_action :set_api_v1_capstone, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /api/v1/capstones
  # GET /api/v1/capstones.json
  def index
    @capstones = Capstone.all
  end

  # GET /api/v1/capstones/1
  # GET /api/v1/capstones/1.json
  def show
    @capstone = Capstone.find(params[:id])
  end

  # GET /api/v1/capstones/new
  def new
    @capstone = Capstone.new
  end

  # GET /api/v1/capstones/1/edit
  def edit
  end

  # POST /api/v1/capstones
  # POST /api/v1/capstones.json
  def create
    @capstone = Capstone.new(capstone_params)

    respond_to do |format|
      if @capstone.save
        format.html { redirect_to '/api/v1/capstones', notice: 'Capstone was successfully created.' }
        format.json { render :show, status: :created, location: '/api/v1/capstones' }
      else
        format.html { render :new }
        format.json { render json: capstone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/capstones/1
  # PATCH/PUT /api/v1/capstones/1.json
  def update
    respond_to do |format|
      if @capstone.update(capstone_params)
        format.html { redirect_to '/api/v1/capstones', notice: 'Capstone was successfully updated.' }
        format.json { render :show, status: :ok, location: '/api/v1/capstones' }
      else
        format.html { render :edit }
        format.json { render json: @capstone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/capstones/1
  # DELETE /api/v1/capstones/1.json
  def destroy
    @capstone.destroy
    respond_to do |format|
      format.html { redirect_to '/api/v1/capstones', notice: 'Capstone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capstone
      @capstone = Capstone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capstone_params
      params.fetch(:capstone, {})
    end
end
