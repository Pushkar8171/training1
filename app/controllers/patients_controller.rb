class PatientsController < ApplicationController
    def index 
        @patient = Patient.all
        #render "books/index"
    end

    def show  
        @patient = Patient.find(params[:id])
    end

    def destroy
        @patient = Patient.find(params[:id])
    end
end
