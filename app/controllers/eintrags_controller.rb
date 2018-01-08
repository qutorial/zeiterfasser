class EintragsController < ApplicationController
  before_action :set_eintrag, only: [:show, :edit, :update, :destroy]

  # GET /eintrags
  # GET /eintrags.json
  def index
    @eintrags = Eintrag.all
  end

  # GET /eintrags/1
  # GET /eintrags/1.json
  def show
  end

  # GET /eintrags/new
  def new
    @eintrag = Eintrag.new
  end

  # GET /eintrags/1/edit
  def edit
  end

  # POST /eintrags
  # POST /eintrags.json
  def create
    @eintrag = Eintrag.new(eintrag_params)

    respond_to do |format|
      if @eintrag.save
        format.html { redirect_to @eintrag, notice: 'Eintrag was successfully created.' }
        format.json { render :show, status: :created, location: @eintrag }
      else
        format.html { render :new }
        format.json { render json: @eintrag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eintrags/1
  # PATCH/PUT /eintrags/1.json
  def update
    respond_to do |format|
      if @eintrag.update(eintrag_params)
        format.html { redirect_to @eintrag, notice: 'Eintrag was successfully updated.' }
        format.json { render :show, status: :ok, location: @eintrag }
      else
        format.html { render :edit }
        format.json { render json: @eintrag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eintrags/1
  # DELETE /eintrags/1.json
  def destroy
    @eintrag.destroy
    respond_to do |format|
      format.html { redirect_to eintrags_url, notice: 'Eintrag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eintrag
      @eintrag = Eintrag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eintrag_params
      params.require(:eintrag).permit(:kosten_traeger_id, :duration, :date, :comment, :user_id)
    end
end
