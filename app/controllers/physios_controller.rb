class PhysiosController < ApplicationController
  before_action :set_physio, only: [:show, :edit, :update, :destroy]
  before_action :authorise, :only => [:new, :create, :edit, :update, :delete]

  # GET /physios
  # GET /physios.json
  def index
    @physios = Physio.all
  end

  # GET /physios/1
  # GET /physios/1.json
  def show
  end

  # GET /physios/new
  def new
    @physio = Physio.new
  end

  # GET /physios/1/edit
  def edit
  end

  # POST /physios
  # POST /physios.json
  def create
    @physio = Physio.new(physio_params)

    respond_to do |format|
      if @physio.save
        format.html { redirect_to @physio, notice: 'Physio was successfully created.' }
        format.json { render :show, status: :created, location: @physio }
      else
        format.html { render :new }
        format.json { render json: @physio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physios/1
  # PATCH/PUT /physios/1.json
  def update
    respond_to do |format|
      if @physio.update(physio_params)
        format.html { redirect_to @physio, notice: 'Physio was successfully updated.' }
        format.json { render :show, status: :ok, location: @physio }
      else
        format.html { render :edit }
        format.json { render json: @physio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physios/1
  # DELETE /physios/1.json
  def destroy
    @physio.destroy
    respond_to do |format|
      format.html { redirect_to physios_url, notice: 'Physio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physio
      @physio = Physio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physio_params
      params.require(:physio).permit(:name, :dob, :profile_picture, :registered, :email, :phone_number, :service_id, :password, :password_confirmation)
    end
end
