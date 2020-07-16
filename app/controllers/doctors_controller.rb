class DoctorsController < ApplicationController
    
    def login
        byebug
        # try and find the doctor with the username we've been given
        doctor = Doctor.find_by(username: params[:username])
        # if we can find them, try and authenticate the user with the password we've been given
        if doctor && doctor.authenticate(params[:password])
            # if we can authenticate them, log them in
            render json: { message: "Success"}
        else
            render json: { message: "Failure"}
        end
    end

end
