class Level2TopicGroupsController < ApplicationController
  before_action :set_level2_topic_group, only: [:show, :edit, :update, :destroy]

  # GET /level2_topic_groups
  # GET /level2_topic_groups.json
  def index
    @level2_topic_groups = Level2TopicGroup.all
  end

  # GET /level2_topic_groups/1
  # GET /level2_topic_groups/1.json
  def show
  end

  # GET /level2_topic_groups/new
  def new
    @level2_topic_group = Level2TopicGroup.new
  end

  # GET /level2_topic_groups/1/edit
  def edit
  end

  # POST /level2_topic_groups
  # POST /level2_topic_groups.json
  def create
    @level2_topic_group = Level2TopicGroup.new(level2_topic_group_params)

    respond_to do |format|
      if @level2_topic_group.save
        format.html { redirect_to @level2_topic_group, notice: 'Level 2 topic group was successfully created.' }
        format.json { render :show, status: :created, location: @level2_topic_group }
      else
        format.html { render :new }
        format.json { render json: @level2_topic_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level2_topic_groups/1
  # PATCH/PUT /level2_topic_groups/1.json
  def update
    respond_to do |format|
      if @level2_topic_group.update(level2_topic_group_params)
        format.html { redirect_to @level2_topic_group, notice: 'Level 2 topic group was successfully updated.' }
        format.json { render :show, status: :ok, location: @level2_topic_group }
      else
        format.html { render :edit }
        format.json { render json: @level2_topic_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level2_topic_groups/1
  # DELETE /level2_topic_groups/1.json
  def destroy
    @level2_topic_group.destroy
    respond_to do |format|
      format.html { redirect_to level2_topic_groups_url, notice: 'Level 2 topic group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level2_topic_group
      @level2_topic_group = Level2TopicGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level2_topic_group_params
      params.require(:level2_topic_group).permit(:level1_topic_group_id, :name, :start_year, :end_year)
    end
end
