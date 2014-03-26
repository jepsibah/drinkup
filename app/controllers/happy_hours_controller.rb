class HappyHoursController < ApplicationController
  before_action :set_happy_hour, only: [:show, :edit, :update, :destroy]

  # GET /happy_hours
  # GET /happy_hours.json
  def index
    @happy_hours = HappyHour.all
  end

  # GET /happy_hours/1
  # GET /happy_hours/1.json
  def show
  end

  # GET /happy_hours/new
  def new
    @happy_hour = HappyHour.new
  end

  # GET /happy_hours/1/edit
  def edit
  end

  # POST /happy_hours
  # POST /happy_hours.json
  def create
    @happy_hour = HappyHour.new(happy_hour_params)

    respond_to do |format|
      if @happy_hour.save
        format.html { redirect_to @happy_hour, notice: 'Happy hour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @happy_hour }
      else
        format.html { render action: 'new' }
        format.json { render json: @happy_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happy_hours/1
  # PATCH/PUT /happy_hours/1.json
  def update
    respond_to do |format|
      if @happy_hour.update(happy_hour_params)
        format.html { redirect_to @happy_hour, notice: 'Happy hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @happy_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happy_hours/1
  # DELETE /happy_hours/1.json
  def destroy
    @happy_hour.destroy
    respond_to do |format|
      format.html { redirect_to happy_hours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happy_hour
      @happy_hour = HappyHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happy_hour_params
      params.require(:happy_hour).permit(:id, :place_id, :start_time, :end_time, :day, :deal)
    end
end
