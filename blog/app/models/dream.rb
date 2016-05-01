class Dream < ActiveRecord::Base

  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
	validates :title, presence: true,
                    length:{minimum: 5 }
  

  has_many :comments, dependent: :destroy
  acts_as_votable
  
  
  def score
    self.get_upvotes.size - self.get_downvotes.size
  end

  def upvote_count
    self.get_upvotes.size
  end

  def downvote_count
    self.get_downvotes.size
  end

	#make dream title "web friendly"
	#lowercase and replace spaces with underscores '_'
  def slug
    title.downcase.gsub(" ", "_")  
  end

  def to_param
    "#{id}-#{slug}"
  end

	def self.search(search)
		self.where("title ILIKE ? OR text ILIKE ?", "%#{search}%", "%#{search}%")
	end
end
