class PrimeminestersController < ApplicationController
  before_action :set_primeminester, only: [:show, :edit, :update, :destroy]

  # GET /primeminesters
  # GET /primeminesters.json
  def index
    @primeminesters = Primeminester.all
  end

  # GET /primeminesters/1
  # GET /primeminesters/1.json
  def show
  end

  # GET /primeminesters/new
  def new
    @primeminester = Primeminester.new
  end

  # GET /primeminesters/1/edit
  def edit
  end

  # POST /primeminesters
  # POST /primeminesters.json
  def create
    @primeminester = Primeminester.new(primeminester_params)

    respond_to do |format|
      if @primeminester.save
        format.html { redirect_to @primeminester, notice: 'Primeminester was successfully created.' }
        format.json { render :show, status: :created, location: @primeminester }
      else
        format.html { render :new }
        format.json { render json: @primeminester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primeminesters/1
  # PATCH/PUT /primeminesters/1.json
  def update
    respond_to do |format|
      if @primeminester.update(primeminester_params)
        format.html { redirect_to @primeminester, notice: 'Primeminester was successfully updated.' }
        format.json { render :show, status: :ok, location: @primeminester }
      else
        format.html { render :edit }
        format.json { render json: @primeminester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primeminesters/1
  # DELETE /primeminesters/1.json
  def destroy
    @primeminester.destroy
    respond_to do |format|
      format.html { redirect_to primeminesters_url, notice: 'Primeminester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primeminester
      @primeminester = Primeminester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primeminester_params
      params.require(:primeminester).permit(:name, :duriation, :discription)
    end
end
