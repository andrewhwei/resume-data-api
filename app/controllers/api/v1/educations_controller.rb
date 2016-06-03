class Api::V1::EducationsController < ApplicationController
  before_action :set_api_v1_education, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/educations
  # GET /api/v1/educations.json
  def index
    @api_v1_educations = Api::V1::Education.all
  end

  # GET /api/v1/educations/1
  # GET /api/v1/educations/1.json
  def show
  end

  # GET /api/v1/educations/new
  def new
    @api_v1_education = Api::V1::Education.new
  end

  # GET /api/v1/educations/1/edit
  def edit
  end

  # POST /api/v1/educations
  # POST /api/v1/educations.json
  def create
    @api_v1_education = Api::V1::Education.new(api_v1_education_params)

    respond_to do |format|
      if @api_v1_education.save
        format.html { redirect_to @api_v1_education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_education }
      else
        format.html { render :new }
        format.json { render json: @api_v1_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/educations/1
  # PATCH/PUT /api/v1/educations/1.json
  def update
    respond_to do |format|
      if @api_v1_education.update(api_v1_education_params)
        format.html { redirect_to @api_v1_education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_education }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/educations/1
  # DELETE /api/v1/educations/1.json
  def destroy
    @api_v1_education.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_education
      @api_v1_education = Api::V1::Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_education_params
      params.fetch(:api_v1_education, {})
    end
end
