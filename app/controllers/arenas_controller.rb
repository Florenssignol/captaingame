class ArenasController < ApplicationController
  before_action :set_arena, only: [:show, :edit, :update, :destroy, :fight]
  # before_action :init

  # def init 
  #   @life_left_character_1 = 1
  #   @life_left_character_2 
  # end

  # GET /arenas
  # GET /arenas.json
  def index
    @arenas = Arena.all
  end

  # GET /arenas/1
  # GET /arenas/1.json
  def show
  end

  # GET /arenas/new
  def new
    @arena = Arena.new
  end

  # GET /arenas/1/edit
  def edit
  end

  # POST /arenas
  # POST /arenas.json
  def create
    @arena = Arena.new(arena_params)

    respond_to do |format|
      if @arena.save
        format.html { redirect_to @arena, notice: 'Arena was successfully created.' }
        format.json { render :show, status: :created, location: @arena }
      else
        format.html { render :new }
        format.json { render json: @arena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arenas/1
  # PATCH/PUT /arenas/1.json
  def update
    respond_to do |format|
      if @arena.update(arena_params)
        format.html { redirect_to @arena, notice: 'Arena was successfully updated.' }
        format.json { render :show, status: :ok, location: @arena }
      else
        format.html { render :edit }
        format.json { render json: @arena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arenas/1
  # DELETE /arenas/1.json
  def destroy
    @arena.destroy
    respond_to do |format|
      format.html { redirect_to arenas_url, notice: 'Arena was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def fight
    @winner, @loser = StartFight.new(@arena).call 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arena
      @arena = Arena.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arena_params
      params.require(:arena).permit(:character_1_id, :character_2_id, :character_1_weapon_id, :character_2_weapon_id)
    end
end
