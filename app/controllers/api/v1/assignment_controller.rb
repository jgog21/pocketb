class Api::V1::AssignmentController < ApplicationController

	#GET courses/assignments
	def getAssignments
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
		       count = course.assignments.count
		    end  

	        assignments = course.assignments.offset(offset).limit(count)

	        #preparando json
	        json = {
	          :code => 200,
	          :assignments => Array.new
	        }

	        assignments.each do |a|
	          json[:assignments] << {
	          	:id_assignment => a.id,
	          	:title => a.title,
	          	:grade => a.grade,
	          	:date => a.date
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

	#GET courses/assignments/:id_assignment
	def getAssignmentDetails
		token = params[:token]
	  	id_assignment = params[:id_assignment]

	    #revisar token

	    #revisando parametros
	    if id_assignment.present?
	      if Assignment.exists?(id_assignment)
	        assignment = Assignment.find(id_assignment)

	        #preparando json
	        json = {
	          	:code => 200,
	          	:id_assignment => assignment.id,
	          	:title => assignment.title,
	          	:grade => assignment.grade,
	        	:date => assignment.date,
	        	:assignment_pdf => assignment.assignment_pdf
	        }
	        
	      else
	        #error no existe asignacion id_assignment en base de datos 
        	json = ErrorHandler.getJsonResponse(ErrorHandler::ASSIGNMENT_DOESNT_EXIST, id_assignment)
	      end
	    else
	      	#error no existe parametro id_assignment
      		json = ErrorHandler.getJsonResponse(ErrorHandler::NO_ASSIGNMENT_ID)
	    end

	    respond_to do |format|
	      #format.html # show.html.erb
	      #format.xml  { render :xml => @courses }
	      format.json { render :json => json }
	    end

	end
end
