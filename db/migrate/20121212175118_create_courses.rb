class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name
      t.text :version
      t.text :overview
      t.text :outline
      t.text :image_course
      t.text :teacher_name
      t.text :teacher_email
      t.text :teacher_image
      t.text :teacher_bio_summary
      t.text :teacher_bio_mime_type
      t.text :teacher_bio_link
      t.text :requirements
      t.text :outline
      t.text :outline_mime_type

      t.timestamps
    end
  end
end
