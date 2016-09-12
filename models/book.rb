class Book

  attr_accessor :author, :title, :year, :notes

  def initialize(author, title, year, notes)
    @author = author
    @title = title
    @year = year
    @notes = notes
  end

end 