class OrgUnitsController < ApplicationController
  before_action :set_org_unit, only: [:show, :edit, :update, :destroy]

  # GET /org_units
  # GET /org_units.json
  def index
    @org_units = OrgUnit.all
  end

  # GET /org_units/1
  # GET /org_units/1.json
  def show
  end

  # GET /org_units/new
  def new
    @org_unit = OrgUnit.new
  end

  # GET /org_units/1/edit
  def edit
  end

  # POST /org_units
  # POST /org_units.json
  def create
    @org_unit = OrgUnit.new(org_unit_params)

    respond_to do |format|
      if @org_unit.save
        format.html { redirect_to @org_unit, notice: 'Org unit was successfully created.' }
        format.json { render :show, status: :created, location: @org_unit }
      else
        format.html { render :new }
        format.json { render json: @org_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_units/1
  # PATCH/PUT /org_units/1.json
  def update
    respond_to do |format|
      if @org_unit.update(org_unit_params)
        format.html { redirect_to @org_unit, notice: 'Org unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_unit }
      else
        format.html { render :edit }
        format.json { render json: @org_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_units/1
  # DELETE /org_units/1.json
  def destroy
    @org_unit.destroy
    respond_to do |format|
      format.html { redirect_to org_units_url, notice: 'Org unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_unit
      @org_unit = OrgUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def org_unit_params
      params.require(:org_unit).permit(:name, :city, :post_code, :street, :country)
    end
end
