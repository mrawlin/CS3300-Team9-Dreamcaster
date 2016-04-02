class Dream < ActiveRecord::Base

  has_many :comments, dependent: :destroy
	ratyrate_rateable 'quality'

	#make dream title "web friendly"
	#lowercase and replace spaces with underscores '_'
  def slug
    title.downcase.gsub(" ", "_")  
  end

  def to_param
    "#{id}-#{slug}"
  end
end
