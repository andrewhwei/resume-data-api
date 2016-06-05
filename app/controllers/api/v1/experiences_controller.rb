class Api::V1::ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/experiences
  # GET /api/v1/experiences.json
  def index
    @experiences = Experience.all
  end

  # GET /api/v1/experiences/1
  # GET /api/v1/experiences/1.json
  def show
  end

  # GET /api/v1/experiences/new
  def new
    @experience = Experience.new
  end

  # GET /api/v1/experiences/1/edit
  def edit
  end

  # POST /api/v1/experiences
  # POST /api/v1/experiences.json
  def create
    @experience = Experience.new(student_id: params[:student_id], start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details])

    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/experiences/1
  # PATCH/PUT /api/v1/experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(student_id: params[:student_id], start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company_name: params[:company_name], details: params[:details])
        format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/experiences/1
  # DELETE /api/v1/experiences/1.json
  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.fetch(:experience, {})
    end
end
