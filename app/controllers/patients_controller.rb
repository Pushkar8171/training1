class PatientsController < ApplicationController
    def index 
        @patient = Patient.all
    end

    def show  
        @patient = Patient.find(params[:id])
    end

    def foobar
      render json: 'hello world'
    end
end
