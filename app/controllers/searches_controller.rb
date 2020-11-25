class SearchesController < ApplicationController
  def search
    @range = params[:range]
    search = params[:search]
    @word = params[:word]
    @books = Book.all
    @users = User.all

    if @range == '1'
      @user = User.search(search,@word)
    else
      @book = Book.search(search,@word)
    end
  end
end
