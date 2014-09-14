class Post < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings

  #Getter and Setter for all_tags vertial attribute
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
