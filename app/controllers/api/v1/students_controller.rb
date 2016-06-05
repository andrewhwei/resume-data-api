class Api::V1::StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1.json
  def show
    @student = Student.find params[:id]
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students.json
  def create
    @student = Student.new student_params
    respond_to do |format|
      if @student.save
        format.html { redirect_to '/api/v1/students', notice: 'Student created!' }
        format.json { render :show, status: :created, 
                             location: '/api/v1/students' }
      else
        format.html { render :new }
        format.json { render json: @student.errors, 
                             status: :unprocessable_entity }
      end
    end

  # Student.create({first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], wordpress_url: params[:wordpress_url], resume_url: params[:resume_url], github_url: params[:github_url], photo: params[:photo]})
  end

  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update student_params
        format.html { redirect_to '/api/v1/students', 
                                  notice: 'Student updated!' }
        format.json { render :show, status: :ok, location: '/api/v1/students' }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, 
                             status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1.json
  def destroy
    @student.destroy
    redirect_to '/api/v1/students'
  end

  private

  def set_student
    @student = Student.find params[:id]
  end

  def student_params
    params.fetch :student, {}
  end
end
