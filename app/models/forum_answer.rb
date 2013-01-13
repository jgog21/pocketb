class ForumAnswer < ActiveRecord::Base
  attr_accessible :answer, :owner, :timestamp, :votes
  has_and_belongs_to_many :forums
end
