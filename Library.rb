class Library

  attr_accessor :books

  def initialize()
    @books = [];
  end

  def add_book(book)
    @books.push(book)
  end


end
