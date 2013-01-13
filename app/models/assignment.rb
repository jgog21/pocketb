class Assignment < ActiveRecord::Base
  attr_accessible :assignment_pdf, :date, :grade, :title
  has_and_belongs_to_many :courses
end
