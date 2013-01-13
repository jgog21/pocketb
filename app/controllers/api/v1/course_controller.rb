require "error_handler"

class Api::V1::CourseController < ApplicationController

	#GET /courses (listado)
  def getCoursesList

  	token = params[:token]
    offset = params[:offset]
    count = params[:count]

    #revisar token

    #revisando parametros
    if not offset.present?
    	offset = 0
    end

 	  if not count.present?
    	count = Course.count
    end  

    courses = Course.offset(offset).limit(count) 

    #preparando json
    json = {
    	:code => 200,
    	:courses => Array.new
    }
    courses.each do |c|
    	json[:courses] << {
		    :id_course => c.id,
		    :name => c.name,
		    :version => c.version,
		    :image_course => c.image_course,
		    :teacher_name => c.teacher_name
		 }
    end

    respond_to do |format|
      #format.html # show.html.erb
      #format.xml  { render :xml => @courses }
      format.json { render :json => json }
    end
  end


  #GET /courses/:id_course (detalles)
  def getCourseDetails 	
  	token = params[:token]
    id_course = params[:id_course]

    #revisar token

    #revisando parametros
    if id_course.present?
      if Course.exists?(id_course)
        course = Course.find(id_course)

        #preparando json
        json = {
          :code => 200,
          :id_course => course.id,
          :name => course.name,
          :version => course.version,
          :overview => course.overview,
          :image_course => course.image_course,
          :teacher => {
            :name => course.teacher_name,
            :email => course.teacher_email,
            :image_teacher => course.teacher_image,
            :biography_summary => course.teacher_bio_summary,
            :biography_mime_type => course.teacher_bio_mime_type,
            :bioraphy_link => course.teacher_bio_link
          },
          :requirements => course.requirements,
          :outline_mime_type => course.outline_mime_type,
          :outline_link => course.outline
        }
      else 
        #error no existe curso @id_course en base de datos 
        json = ErrorHandler.getJsonResponse(ErrorHandler::COURSE_DOESNT_EXIST, id_course)
      end
    else
      #error no existe parametro id_course
      json = ErrorHandler.getJsonResponse(ErrorHandler::NO_COURSE_ID)
    end

    respond_to do |format|
      #format.html # show.html.erb
      #format.xml  { render :xml => @courses }
      format.json { render :json => json }
    end
  	
  end
end
