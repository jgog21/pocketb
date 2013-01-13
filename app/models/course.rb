class Course < ActiveRecord::Base
  attr_accessible :image_course, :name, :outline, :outline, :outline_mime_type, :overview, :requirements, :teacher_bio_link, :teacher_bio_mime_type, :teacher_bio_summary, :teacher_email, :teacher_image, :teacher_name, :version
  has_and_belongs_to_many :news
  has_and_belongs_to_many :assignments
  has_and_belongs_to_many :teacher_assistants
end
