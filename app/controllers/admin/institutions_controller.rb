class Admin::InstitutionsController < ApplicationController
  before_action :set_admin_institution, only: [:show, :edit, :update, :destroy]

  # GET /admin/institutions
  # GET /admin/institutions.json
  def index
    @admin_institutions = Institution.all
  end

  # GET /admin/institutions/1
  # GET /admin/institutions/1.json
  def show
  end

  # GET /admin/institutions/new
  def new
    @admin_institution = Institution.new
  end

  # GET /admin/institutions/1/edit
  def edit
  end

  # POST /admin/institutions
  # POST /admin/institutions.json
  def create
    @admin_institution = Institution.new(admin_institution_params)

    redirect_to admin_institutions_path, notice: 'Institución creada correctamente.' if @admin_pet.save = true

  end

  # PATCH/PUT /admin/institutions/1
  # PATCH/PUT /admin/institutions/1.json
  def update
    respond_to do |format|
      if @admin_institution.update(admin_institution_params)
        format.html { redirect_to @admin_institution, notice: 'Institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_institution }
      else
        format.html { render :edit }
        format.json { render json: @admin_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/institutions/1
  # DELETE /admin/institutions/1.json
  def destroy
    @admin_institution.destroy
    respond_to do |format|
      format.html { redirect_to admin_institutions_url, notice: 'Institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_institution
      @admin_institution = Institution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_institution_params
      params.require(:admin_institution).permit(:name, :username, :email, :password, :country, :state, :city, :website, :manager, :address, :description, :photo)
    end
end
