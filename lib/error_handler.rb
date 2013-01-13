class ErrorHandler 

	COURSE_DOESNT_EXIST = 1
	NO_COURSE_ID = 2
	ASSIGNMENT_DOESNT_EXIST = 3
	NO_ASSIGNMENT_ID = 4




	def self.getJsonResponse(id_error,*otherargs)

		case id_error
		when COURSE_DOESNT_EXIST
			json = {
            	:code => 401,
            	:error_message => "course with id #{otherargs[0]} doesn't exist in database"
        	} 

		when NO_COURSE_ID
			json = {
          		:code => 401,
          		:error_message => "didn't send parameter id_course"
      		}
      	when ASSIGNMENT_DOESNT_EXIST
      		json = {
	            :code => 401,
	            :error_message => "assignment with id #{otherargs[0]} doesn't exist in database"
	        } 

      	when NO_ASSIGNMENT_ID
      		 json = {
	          :code => 401,
	          :error_message => "didn't send parameter id_assignment"
	      	}
		end

		return json
	end


end