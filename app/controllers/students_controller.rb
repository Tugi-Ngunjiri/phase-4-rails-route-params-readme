 class students_controller <ApplicationController
    def index
      students =  Student.all 
      render json: students
    end

    def show 
        students = Student.find_by(id:params[:id])
        render json: students.to_json(only:[:id, :first_name, :last|_name,  :grade])
    end
end