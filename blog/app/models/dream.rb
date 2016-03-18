class Dream < ActiveRecord::Base

  def slug
    title.downcase.gsub(" ", "_")  
  end

  def to_param
    "#{id}-#{slug}"
  end
end
