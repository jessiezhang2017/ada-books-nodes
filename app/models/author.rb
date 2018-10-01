class Author < ApplicationRecord
  has_many :books

  def first_published
   books_with_year = self.books.where.not(date_published: nil)
   first_book = books_with_year.order(date_published: :asc).first
   if first_book != nil
     return first_book.date_published
   else
     return nil
   end
  end

   def most_recent_published
     books_with_year = self.books.where.not(date_published: nil)
     last_book = books_with_year.order(date_published: :asc).last
     if last_book != nil
       return last_book.date_published
     else
       return nil
     end
    end


end
