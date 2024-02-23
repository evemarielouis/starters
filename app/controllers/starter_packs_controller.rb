class StarterPacksController < ApplicationController
  before_action :set_starter_pack, only: %i[ show edit update destroy ]

  # GET /starter_packs or /starter_packs.json
  def index
    @starter_packs = StarterPack.all
  end

  # GET /starter_packs/1 or /starter_packs/1.json
  def show
  end

  # GET /starter_packs/new
  def new
    @starter_pack = StarterPack.new
  end

  # GET /starter_packs/1/edit
  def edit
  end

  # POST /starter_packs or /starter_packs.json
  def create
    @starter_pack = StarterPack.new(starter_pack_params)

    respond_to do |format|
      if @starter_pack.save
        format.html { redirect_to starter_pack_url(@starter_pack), notice: "Starter pack was successfully created." }
        format.json { render :show, status: :created, location: @starter_pack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @starter_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starter_packs/1 or /starter_packs/1.json
  def update
    respond_to do |format|
      if @starter_pack.update(starter_pack_params)
        format.html { redirect_to starter_pack_url(@starter_pack), notice: "Starter pack was successfully updated." }
        format.json { render :show, status: :ok, location: @starter_pack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @starter_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starter_packs/1 or /starter_packs/1.json
  def destroy
    @starter_pack.destroy!

    respond_to do |format|
      format.html { redirect_to starter_packs_url, notice: "Starter pack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starter_pack
      @starter_pack = StarterPack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def starter_pack_params
      params.require(:starter_pack).permit(:name, :icon, :title, :image_one, :image_two, :image_three, :image_four, :description)
    end
end
