class BorrowingsController < ApplicationController
	protect_from_forgery except: :returnBook
	#helper_method :returnBook
	def index
		@borrowings = Borrowing.where(:isReturned => false)
	end
	def create
		@borrowing = Borrowing.new(borrowing_params)
		if Book.where({id: @borrowing.Book_id,isBorrowed: false}).present?
			@borrowing.save
			Book.update(@borrowing.Book_id, :isBorrowed => true)
			redirect_to @borrowing
		else
			@msg = "Book with id:#{@borrowing.Book_id} is currently unavailable"
			render action: 'new', notice: 'Sample notice'
		end
	end
	def show
		flash.now[:alert] = "Showing"

		@borrowing = Borrowing.find(params[:id])
		@student = Student.find(@borrowing.Student_id)
		@book = Book.find(@borrowing.Book_id)

	end
	def returnBook
		#render plain: params[:id].inspect

		Book.update(params[:id], :isBorrowed => false)
		Borrowing.update(params[:my_param], :isReturned => true)
		redirect_to borrowings_path
	end

	private
	def borrowing_params
		params.require(:borrowing).permit(:Student_id, :Book_id)
	end
end
