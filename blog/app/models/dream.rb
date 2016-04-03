class Dream < ActiveRecord::Base
	acts_as_votable
	
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length:{minimum: 5 }
  

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
