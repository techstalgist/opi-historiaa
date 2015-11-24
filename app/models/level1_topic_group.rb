class Level1TopicGroup < ActiveRecord::Base
  belongs_to :era
  has_many :topics
end
