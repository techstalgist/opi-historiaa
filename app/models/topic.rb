class Topic < ActiveRecord::Base
  belongs_to :level1_topic_group
  belongs_to :level2_topic_group
  belongs_to :type
  has_many :causes
  has_many :consequences
  has_many :key_points
  has_and_belongs_to_many :parties
  has_and_belongs_to_many :locations
  has_many :questions
  has_many :user_topics
  accepts_nested_attributes_for :causes, :allow_destroy => true
  accepts_nested_attributes_for :consequences, :allow_destroy => true
  accepts_nested_attributes_for :key_points, :allow_destroy => true
  accepts_nested_attributes_for :parties
  accepts_nested_attributes_for :locations
end
