class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  
  before_filter :load_data
  
  # GET /topics
  # GET /topics.json
  def index

  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @user = User.find(session[:user_id])
    @user_topic = UserTopic.where("user_id = #{@user.id} AND topic_id = #{@topic.id}")
  end

  # GET /topics/new
  def new
    @topic = Topic.new
    @level1_topic_groups = Level1TopicGroup.all
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(topic_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to topics_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end
    
    def load_data
      @topics = Topic.all
      @eras = Era.order(:start_year)
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:level1_topic_group_id, :level2_topic_group_id, :type_id, :name, :start_date, :end_date, 
                                    key_points_attributes: [:id, :text], 
                                    causes_attributes: [:id, :text], 
                                    consequences_attributes: [:id, :text], 
                                    locations_attributes: [:id, :name], 
                                    parties_attributes: [:id, :name])
    end
end
