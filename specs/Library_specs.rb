require('minitest/autorun')
require('minitest/rg')

require_relative('../Library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    library = new Library();
    @book1 = {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    @book2 = {
      title: "Of Mice and Men",
      rental_details: {
        student_name: "Steve",
        date: "03/05/18"
        }
      }
  end

  def test_book_title_search
    

  end





end
