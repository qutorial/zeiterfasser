class KostenTraegersController < ApplicationController
  before_action :set_kosten_traeger, only: [:show, :edit, :update, :destroy]

  # GET /kosten_traegers
  # GET /kosten_traegers.json
  def index
    @kosten_traegers = KostenTraeger.all
  end

  # GET /kosten_traegers/1
  # GET /kosten_traegers/1.json
  def show
  end

  # GET /kosten_traegers/new
  def new
    @kosten_traeger = KostenTraeger.new
  end

  # GET /kosten_traegers/1/edit
  def edit
  end

  # POST /kosten_traegers
  # POST /kosten_traegers.json
  def create
    @kosten_traeger = KostenTraeger.new(kosten_traeger_params)

    respond_to do |format|
      if @kosten_traeger.save
        format.html { redirect_to @kosten_traeger, notice: 'Kosten traeger was successfully created.' }
        format.json { render :show, status: :created, location: @kosten_traeger }
      else
        format.html { render :new }
        format.json { render json: @kosten_traeger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kosten_traegers/1
  # PATCH/PUT /kosten_traegers/1.json
  def update
    respond_to do |format|
      if @kosten_traeger.update(kosten_traeger_params)
        format.html { redirect_to @kosten_traeger, notice: 'Kosten traeger was successfully updated.' }
        format.json { render :show, status: :ok, location: @kosten_traeger }
      else
        format.html { render :edit }
        format.json { render json: @kosten_traeger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kosten_traegers/1
  # DELETE /kosten_traegers/1.json
  def destroy
    @kosten_traeger.destroy
    respond_to do |format|
      format.html { redirect_to kosten_traegers_url, notice: 'Kosten traeger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kosten_traeger
      @kosten_traeger = KostenTraeger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kosten_traeger_params
      params.require(:kosten_traeger).permit(:code, :name)
    end
end
