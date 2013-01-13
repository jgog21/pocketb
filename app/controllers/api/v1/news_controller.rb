require "error_handler"

class Api::V1::NewsController < ApplicationController

	#GET /news (listado)
  def getNews

  	token = params[:token]
  	id_course = params[:id_course]
    offset = params[:offset]
    count = params[:count]

    #revisar token

    #revisando parametros
    if id_course.present?
      if Course.exists?(id_course)
        course = Course.find(id_course)

        if not offset.present?
          offset = 0
        end

        if not count.present?
          count = course.news.count
        end  

        news = course.news.offset(offset).limit(count)

        #preparando json
        json = {
          :code => 200,
          :news => Array.new
        }

        news.each do |n|
          json[:news] << {
            :id_news => n.id,
            :image_news => n.image_news,
            :title => n.title,
            :description => n.description,
            :publish_date => n.publish_date
         }
        end
      else
        #error no existe curso id_course en base de datos 
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
