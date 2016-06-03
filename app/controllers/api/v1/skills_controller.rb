class Api::V1::SkillsController < ApplicationController
  before_action :set_api_v1_skill, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/skills
  # GET /api/v1/skills.json
  def index
    @api_v1_skills = Api::V1::Skill.all
  end

  # GET /api/v1/skills/1
  # GET /api/v1/skills/1.json
  def show
  end

  # GET /api/v1/skills/new
  def new
    @api_v1_skill = Api::V1::Skill.new
  end

  # GET /api/v1/skills/1/edit
  def edit
  end

  # POST /api/v1/skills
  # POST /api/v1/skills.json
  def create
    @api_v1_skill = Api::V1::Skill.new(api_v1_skill_params)

    respond_to do |format|
      if @api_v1_skill.save
        format.html { redirect_to @api_v1_skill, notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_skill }
      else
        format.html { render :new }
        format.json { render json: @api_v1_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/skills/1
  # PATCH/PUT /api/v1/skills/1.json
  def update
    respond_to do |format|
      if @api_v1_skill.update(api_v1_skill_params)
        format.html { redirect_to @api_v1_skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_skill }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/skills/1
  # DELETE /api/v1/skills/1.json
  def destroy
    @api_v1_skill.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_skill
      @api_v1_skill = Api::V1::Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_skill_params
      params.fetch(:api_v1_skill, {})
    end
end
