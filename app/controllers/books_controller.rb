class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	def show
		@book = Book.find(params[:id])
	end
	def create
		#render plain: params[:book].inspect

		@book = Book.new(book_params)

		@book.save
		redirect_to @book

	end
	def edit
		@book = Book.find(params[:id])
	end
	def update
		@book = Book.find(params[:id])
		if @book.update(book_params)
			redirect_to books_path
		else
			render 'edit'
		end
	end
	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_path
	end
	private
	def book_params
		params.require(:book).permit(:name, :author, :pages, :price, :subject)
	end
end
