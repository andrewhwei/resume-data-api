class Api::V1::ExperiencesController < ApplicationController
  before_action :set_api_v1_experience, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/experiences
  # GET /api/v1/experiences.json
  def index
    @api_v1_experiences = Api::V1::Experience.all
  end

  # GET /api/v1/experiences/1
  # GET /api/v1/experiences/1.json
  def show
  end

  # GET /api/v1/experiences/new
  def new
    @api_v1_experience = Api::V1::Experience.new
  end

  # GET /api/v1/experiences/1/edit
  def edit
  end

  # POST /api/v1/experiences
  # POST /api/v1/experiences.json
  def create
    @api_v1_experience = Api::V1::Experience.new(api_v1_experience_params)

    respond_to do |format|
      if @api_v1_experience.save
        format.html { redirect_to @api_v1_experience, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_experience }
      else
        format.html { render :new }
        format.json { render json: @api_v1_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/experiences/1
  # PATCH/PUT /api/v1/experiences/1.json
  def update
    respond_to do |format|
      if @api_v1_experience.update(api_v1_experience_params)
        format.html { redirect_to @api_v1_experience, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_experience }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/experiences/1
  # DELETE /api/v1/experiences/1.json
  def destroy
    @api_v1_experience.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_experience
      @api_v1_experience = Api::V1::Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_experience_params
      params.fetch(:api_v1_experience, {})
    end
end
