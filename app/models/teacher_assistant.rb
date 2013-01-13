class TeacherAssistant < ActiveRecord::Base
  attr_accessible :email, :name
  has_and_belongs_to_many :courses
end
