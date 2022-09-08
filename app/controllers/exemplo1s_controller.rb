class Exemplo1sController < AdminEcosystem::ApplicationController
  before_action :set_exemplo1, only: %i[ show edit update destroy ]
  layout 'admin_ecosystem/admin'
  before_action :authenticate_user
  before_action -> { only_role("admin") }

  # GET /exemplo1s or /exemplo1s.json
  def index
    @usuario = usuario_logado
    @exemplo1s = Exemplo1.all
  end

  # GET /exemplo1s/1 or /exemplo1s/1.json
  def show
  end

  # GET /exemplo1s/new
  def new
    @exemplo1 = Exemplo1.new
  end

  # GET /exemplo1s/1/edit
  def edit
  end

  # POST /exemplo1s or /exemplo1s.json
  def create
    @exemplo1 = Exemplo1.new(exemplo1_params)

    respond_to do |format|
      if @exemplo1.save
        format.html { redirect_to exemplo1_url(@exemplo1), notice: "Exemplo1 was successfully created." }
        format.json { render :show, status: :created, location: @exemplo1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exemplo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exemplo1s/1 or /exemplo1s/1.json
  def update
    respond_to do |format|
      if @exemplo1.update(exemplo1_params)
        format.html { redirect_to exemplo1_url(@exemplo1), notice: "Exemplo1 was successfully updated." }
        format.json { render :show, status: :ok, location: @exemplo1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exemplo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplo1s/1 or /exemplo1s/1.json
  def destroy
    @exemplo1.destroy

    respond_to do |format|
      format.html { redirect_to exemplo1s_url, notice: "Exemplo1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exemplo1
      @exemplo1 = Exemplo1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exemplo1_params
      params.require(:exemplo1).permit(:nome, :idade, :cpf)
    end
end
