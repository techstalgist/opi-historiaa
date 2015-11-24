class Level1TopicGroupsController < ApplicationController
  before_action :set_level1_topic_group, only: [:show, :edit, :update, :destroy]
  
  #before_filter :set_globals
  #def set_globals
  #  @eras = Era.order(:start_year)
  #  @all_level1_groups = Level1TopicGroup.all
  #end
  
  # GET /level1_topic_groups
  # GET /level1_topic_groups.json
  def index
    @level1_topic_groups = Level1TopicGroup.all
  end

  # GET /level1_topic_groups/1
  # GET /level1_topic_groups/1.json
  def show
    @eras = Era.order(:start_year)
  end

  # GET /level1_topic_groups/new
  def new
    @level1_topic_group = Level1TopicGroup.new
    @eras = Era.all
  end

  # GET /level1_topic_groups/1/edit
  def edit
  end

  # POST /level1_topic_groups
  # POST /level1_topic_groups.json
  def create
    @level1_topic_group = Level1TopicGroup.new(level1_topic_group_params)

    respond_to do |format|
      if @level1_topic_group.save
        format.html { redirect_to @level1_topic_group, notice: 'Level 1 topic group was successfully created.' }
        format.json { render :show, status: :created, location: @level1_topic_group }
      else
        format.html { render :new }
        format.json { render json: @level1_topic_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level1_topic_groups/1
  # PATCH/PUT /level1_topic_groups/1.json
  def update
    respond_to do |format|
      if @level1_topic_group.update(level1_topic_group_params)
        format.html { redirect_to @level1_topic_group, notice: 'Level 1 topic group was successfully updated.' }
        format.json { render :show, status: :ok, location: @level1_topic_group }
      else
        format.html { render :edit }
        format.json { render json: @level1_topic_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level1_topic_groups/1
  # DELETE /level1_topic_groups/1.json
  def destroy
    @level1_topic_group.destroy
    respond_to do |format|
      format.html { redirect_to level1_topic_groups_url, notice: 'Level 1 topic group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level1_topic_group
      @level1_topic_group = Level1TopicGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level1_topic_group_params
      params.require(:level1_topic_group).permit(:era_id, :name, :start_year, :end_year)
    end
end
