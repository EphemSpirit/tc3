class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def clean_tags
    self.tags.map(&:name).reject(&:nil?)[0].split(", ")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end
  
end
