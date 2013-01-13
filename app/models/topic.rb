class Topic < ActiveRecord::Base
  attr_accessible :subtitle, :title
  has_and_belongs_to_many :resources
end
