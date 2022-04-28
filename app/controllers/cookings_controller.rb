class CookingsController < ApplicationController
  before_action :set_cooking, only: %i[ show edit update destroy timer_id]
  skip_before_action :login_required

  # GET /cookings or /cookings.json
  def index
    if logged_in?
      @cookings = Cooking.all
    else
      @cookings = Cooking.where(user_id: nil)
    end
  end

  # GET /cookings/1 or /cookings/1.json
  def show
  end

  # GET /cookings/new
  def new
    @cooking = Cooking.new
  end

  # GET /cookings/1/edit
  def edit
  end

  # POST /cookings or /cookings.json
  def create
    @cooking = current_user.cookings.new(cooking_params)

    respond_to do |format|
      if @cooking.save
        format.html { redirect_to cookings_url(@cooking) }
        format.json { render :index, status: :created, location: @cooking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookings/1 or /cookings/1.json
  def update
    respond_to do |format|
      if @cooking.update(cooking_params)
        format.html { redirect_to cooking_url(@cooking.id), notice: "Cooking was successfully updated." }
        format.json { render :show, status: :ok, location: @cooking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookings/1 or /cookings/1.json
  def destroy
    @cooking.destroy

    respond_to do |format|
      format.html { redirect_to cookings_url, notice: "Cooking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def timer
  end

  def timer_id
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cooking
      @cooking = Cooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cooking_params
      params.require(:cooking).permit(:cooking_material, :cooking_name, :hour, :minute, :second, :user_id)
    end
end
