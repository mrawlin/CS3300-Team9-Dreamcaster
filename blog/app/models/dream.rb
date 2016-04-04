class Dream < ActiveRecord::Base
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
end
