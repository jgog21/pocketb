class Forum < ActiveRecord::Base
  attr_accessible :answers, :owner, :text, :timestamp, :title, :views, :votes
  has_and_belongs_to_many :forum_answers
end
