class Resource < ActiveRecord::Base
  attr_accessible :resource_link, :title, :type
  has_and_belongs_to_many :topics
end
