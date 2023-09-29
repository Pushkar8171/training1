class CustomerController < ApplicationController

    def index 
    @customer = Customer.all
    render '/books'
   end 

end
