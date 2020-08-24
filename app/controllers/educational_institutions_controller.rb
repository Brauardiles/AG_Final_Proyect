class EducationalInstitutionsController < ApplicationController
  before_action :set_educational_institution, only: [:show, :edit, :update, :destroy]

  # GET /educational_institutions
  # GET /educational_institutions.json
  def index
    @educational_institutions = EducationalInstitution.all
  end

  # GET /educational_institutions/1
  # GET /educational_institutions/1.json
  def show
  end

  # GET /educational_institutions/new
  def new
    @educational_institution = EducationalInstitution.new
  end

  # GET /educational_institutions/1/edit
  def edit
  end

  # POST /educational_institutions
  # POST /educational_institutions.json
  def create
    @educational_institution = EducationalInstitution.new(educational_institution_params)

    respond_to do |format|
      if @educational_institution.save
        format.html { redirect_to @educational_institution, notice: 'Educational institution was successfully created.' }
        format.json { render :show, status: :created, location: @educational_institution }
      else
        format.html { render :new }
        format.json { render json: @educational_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educational_institutions/1
  # PATCH/PUT /educational_institutions/1.json
  def update
    respond_to do |format|
      if @educational_institution.update(educational_institution_params)
        format.html { redirect_to @educational_institution, notice: 'Educational institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @educational_institution }
      else
        format.html { render :edit }
        format.json { render json: @educational_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educational_institutions/1
  # DELETE /educational_institutions/1.json
  def destroy
    @educational_institution.destroy
    respond_to do |format|
      format.html { redirect_to educational_institutions_url, notice: 'Educational institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educational_institution
      @educational_institution = EducationalInstitution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def educational_institution_params
      params.require(:educational_institution).permit(:rol_data_base, :Name, :Type, :Integration, :region, :city, :state, :adress, :phone, :email)
    end
end
