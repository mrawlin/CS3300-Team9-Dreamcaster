#subthread class- currently unused!
class Subthread < ActiveRecord::Base
  belongs_to :comment
  default_scope -> { order(created_at: :desc) }
  validates :comment_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
