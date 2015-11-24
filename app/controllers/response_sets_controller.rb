class ResponseSetsController < ApplicationController
  
before_action :set_response_set, only: [:show, :edit, :update, :destroy]

before_filter :load_data

def new
  @response_set = ResponseSet.new
end

def create
  
  h = params[:answer]
  u = params[:user_id]
  t = params[:topic_id]
  
  if h == nil 
    redirect_to new_topic_response_set_path(@topic)
  else
  
    @response_set = ResponseSet.create(:user_id => u, :topic_id => t)
  
    h.each do |question, answer|
      Response.create(:answer_id => answer, :question_id => question, :response_set_id => @response_set.id)
    end
    
    @response_set.create_user_topic
    
    redirect_to topic_response_set_path(@topic,@response_set)
  end 
end


def show
    
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_response_set
    @response_set = ResponseSet.find(params[:id])
  end
  
  def load_data
    @topic = Topic.find(params[:topic_id])
    @eras = Era.order(:start_year)
  end
  # Never trust parameters from the scary internet, only allow the white list through.
 
end
