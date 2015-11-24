class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  belongs_to :response_set
  
  after_create :check 
  
  private
    def check
      @correct_answers_array = self.question.answers.where(:correct => true).map do |answer| answer.id end
      if @correct_answers_array.include?(self.answer.id)
        then self.update_attribute(:result,true)
      else self.update_attribute(:result,false)
      end
    end
  
end
