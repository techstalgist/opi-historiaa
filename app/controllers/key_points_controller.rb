class KeyPointsController < ApplicationController
  before_action :set_key_point, only: [:show, :edit, :update, :destroy]

  # GET /key_points
  # GET /key_points.json
  def index
    @key_points = KeyPoint.all
  end

  # GET /key_points/1
  # GET /key_points/1.json
  def show
  end

  # GET /key_points/new
  def new
    @key_point = KeyPoint.new
  end

  # GET /key_points/1/edit
  def edit
  end

  # POST /key_points
  # POST /key_points.json
  def create
    @key_point = KeyPoint.new(key_point_params)

    respond_to do |format|
      if @key_point.save
        format.html { redirect_to @key_point, notice: 'Key point was successfully created.' }
        format.json { render :show, status: :created, location: @key_point }
      else
        format.html { render :new }
        format.json { render json: @key_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_points/1
  # PATCH/PUT /key_points/1.json
  def update
    respond_to do |format|
      if @key_point.update(key_point_params)
        format.html { redirect_to @key_point, notice: 'Key point was successfully updated.' }
        format.json { render :show, status: :ok, location: @key_point }
      else
        format.html { render :edit }
        format.json { render json: @key_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_points/1
  # DELETE /key_points/1.json
  def destroy
    @key_point.destroy
    respond_to do |format|
      format.html { redirect_to key_points_url, notice: 'Key point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_point
      @key_point = KeyPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def key_point_params
      params.require(:key_point).permit(:topic_id, :text)
    end
end
