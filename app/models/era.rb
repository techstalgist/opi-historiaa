class Era < ActiveRecord::Base
  has_many :level1_topic_groups, -> { order(:start_year) }
end
