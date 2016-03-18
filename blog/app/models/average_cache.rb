class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Dream"
  belongs_to :rateable, :polymorphic => true
end
