class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @jobs = Job.all.published.desc
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def new_job
      if @job.updated_at?
        new_job = true
      else
        new_job = false
      end
    end

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(
         :company_logo,
         :company_name,
         :company_website,
         :company_description,
         :compensation_range,
         :compensation_type,
         :description,
         :estimated_hours,
         :headquarters,
         :link_to_apply,
         :price,
         :remote,
         :role_type,
         :title,
         :upsell_type,
         :years_of_experience
      )
    end
end

