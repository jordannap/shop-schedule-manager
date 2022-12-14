class ShopSchedulesController < ApplicationController
  before_action :set_shop_schedule, only: %i[show edit update destroy]
  before_action :authenticate_admin!, only: %i[update destroy create new]

  # GET /shop_schedules or /shop_schedules.json
  def index
    @shop_schedules = ShopSchedule.all
  end

  # GET /shop_schedules/1 or /shop_schedules/1.json
  def show
  end

  # GET /shop_schedules/new
  def new
    @shops = Shop.all
    @shop_schedule = ShopSchedule.new
  end

  # GET /shop_schedules/1/edit
  def edit
  end

  # POST /shop_schedules or /shop_schedules.json
  def create
    @shop_schedule = ShopSchedule.new(shop_schedule_params)

    respond_to do |format|
      if @shop_schedule.save
        format.html { redirect_to shop_schedule_url(@shop_schedule), notice: "Shop schedule was successfully created." }
        format.json { render :show, status: :created, location: @shop_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_schedules/1 or /shop_schedules/1.json
  def update
    respond_to do |format|
      if @shop_schedule.update(shop_schedule_params)
        format.html { redirect_to shop_schedule_url(@shop_schedule), notice: "Shop schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @shop_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_schedules/1 or /shop_schedules/1.json
  def destroy
    @shop_schedule.destroy

    respond_to do |format|
      format.html { redirect_to shop_schedules_url, notice: "Shop schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_schedule
      @shop_schedule = ShopSchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_schedule_params
      params.require(:shop_schedule).permit(:day, :opening_time, :half_time, :open_after_half_time, :closing_time, :day_status)
    end
end
