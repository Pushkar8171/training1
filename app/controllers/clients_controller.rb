class ClientsController < ApplicationController
    def index
      @client = Client.all
    end
    def new
      @client = Client.new
    end
end
