class News < ActiveRecord::Base
  attr_accessible :description, :image_news, :publish_date, :title
  has_and_belongs_to_many :courses
  
end
