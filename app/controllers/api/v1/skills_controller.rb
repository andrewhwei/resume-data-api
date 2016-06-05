class Api::V1::SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/skills
  # GET /api/v1/skills.json
  def index
    @skills = Skill.all
  end

  # GET /api/v1/skills/1
  # GET /api/v1/skills/1.json
  def show
  end

  # GET /api/v1/skills/new
  def new
    @skill = Skill.new
  end

  # GET /api/v1/skills/1/edit
  def edit
  end

  # POST /api/v1/skills
  # POST /api/v1/skills.json
  def create
    @skill = Skill.new(name: params[:name])
    
    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/skills/1
  # PATCH/PUT /api/v1/skills/1.json
  def update
    respond_to do |format|
      if @skill.update(name: params[:name])
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/skills/1
  # DELETE /api/v1/skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.fetch(:skill, {})
    end
end
