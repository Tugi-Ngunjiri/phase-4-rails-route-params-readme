 class students_controller <ApplicationController
    def index
      students =  Student.all 
      render json: students
    end