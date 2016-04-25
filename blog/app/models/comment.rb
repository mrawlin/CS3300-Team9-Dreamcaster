class Comment < ActiveRecord::Base
  belongs_to :dream
  validates :body, presence: true, length:{minimum: 5 }
end
