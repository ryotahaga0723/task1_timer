class CookingsController < ApplicationController
  before_action :set_cooking, only: %i[ show edit update destroy timer_id]
  skip_before_action :login_required

  # GET /cookings or /cookings.json
  def index
    Cooking.where(hour: nil).update_all(hour: 0)
    Cooking.where(minute: nil).update_all(minute: 0)
    Cooking.where(second: nil).update_all(second: 0)
    if logged_in?
      @q = Cooking.left_outer_joins(:users).where(cookings_users:{user_id: current_user.id}).ransack(params[:q])
      @cookings = @q.result(distinct: true).page(params[:page])
    else
      @q = Cooking.left_outer_joins(:users).where(cookings_users:{user_id: nil}).ransack(params[:q])
      @cookings = @q.result(distinct: true).page(params[:page])
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
    @user = current_user
    @cooking = current_user.cookings.new(cooking_params)
    if @cooking.save
      @user.cookings << @cooking
      redirect_to cookings_path(current_user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cookings/1 or /cookings/1.json
  def update
    respond_to do |format|
      if @cooking.update(cooking_params)
        format.html { redirect_to cookings_url, notice: "タイマーを更新しました" }
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
      format.html { redirect_to cookings_url, notice: "タイマーを消去しました。" }
      format.json { head :no_content }
    end
  end

  def timer
  end

  def timer_id
    @recipes = Recipe.where("recipe_time < ? ", @cooking.minute+@cooking.hour*60).order("RANDOM()").limit(3)
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
