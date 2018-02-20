class Listing < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user

  mount_uploader :image, ModelUploader

  #Getter and Setter for all_tags vertial attribute
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).listings
  end

  def self.tagged
    
  end

end
