class Exemplo2sController < ApplicationController
  before_action :set_exemplo2, only: %i[ show edit update destroy ]
  layout 'admin_ecosystem/admin'

  # GET /exemplo2s or /exemplo2s.json
  def index
    @exemplo2s = Exemplo2.all
  end

  # GET /exemplo2s/1 or /exemplo2s/1.json
  def show
  end

  # GET /exemplo2s/new
  def new
    @exemplo2 = Exemplo2.new
  end

  # GET /exemplo2s/1/edit
  def edit
  end

  # POST /exemplo2s or /exemplo2s.json
  def create
    @exemplo2 = Exemplo2.new(exemplo2_params)

    respond_to do |format|
      if @exemplo2.save
        format.html { redirect_to exemplo2_url(@exemplo2), notice: "Exemplo2 was successfully created." }
        format.json { render :show, status: :created, location: @exemplo2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exemplo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemplo2s/1 or /exemplo2s/1.json
  def update
    respond_to do |format|
      if @exemplo2.update(exemplo2_params)
        format.html { redirect_to exemplo2_url(@exemplo2), notice: "Exemplo2 was successfully updated." }
        format.json { render :show, status: :ok, location: @exemplo2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exemplo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplo2s/1 or /exemplo2s/1.json
  def destroy
    @exemplo2.destroy

    respond_to do |format|
      format.html { redirect_to exemplo2s_url, notice: "Exemplo2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemplo2
      @exemplo2 = Exemplo2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exemplo2_params
      params.require(:exemplo2).permit(:nome, :numero, :codigo)
    end
end
