class Dream < ActiveRecord::Base
<<<<<<< HEAD
=======

	ratyrate_rateable 'quality'

	#make dream title "web friendly"
	#lowercase and replace spaces with underscores '_'
  def slug
    title.downcase.gsub(" ", "_")  
  end

  def to_param
    "#{id}-#{slug}"
  end
>>>>>>> f1cfb7cf07bae1b2cd1dbe18d2090ff052499f07
end
