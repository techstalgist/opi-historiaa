class ResponseSet < ActiveRecord::Base
  has_many :responses
  belongs_to :user
  belongs_to :topic
  
  
  def create_user_topic
      
      results_array = self.responses.map do |response| response.result end
            
      if results_array.count { |result| !result } == 0
        UserTopic.find_or_create_by(:user_id => self.user_id, :topic_id => self.topic_id) 
      end 
 end
end
