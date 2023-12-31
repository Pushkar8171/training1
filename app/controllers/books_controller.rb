class BooksController < ApplicationController

    def index
        @books = Book.all
    end 

    def show 
        @book = Book.find(params[:id])
    end 

    def new
      @book = Book.new
    end
  
    def create
      @book = Book.new(book_params)
  
      if @book.save
        redirect_to @book
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @book= Book.find(params[:id])
    end
  
    def update
      @book = Book.find(params[:id])
  
      if @book.update(book_params)
        flash[:success] = "Book is successfully updated!!"
        redirect_to @book
        

      else
        render "edit"
      end
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      
      redirect_to @book
    end

    def search
      # Display all books or perform a search if a query is present
      if params[:query]
        @books = Book.where("title LIKE ?", "%#{params[:query]}%")
      else
        @books = Book.all
      end
    end
    
    private
      def book_params
        params.require(:book).permit(:title, :isbn, :year_published, :out_of_print,:views, :price)
      end
  
end
