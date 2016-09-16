class Book
attr_reader :author, :title, :year, :notes

@@books = []

def initialize(person) 
  @author = person[:author]
    @title = person[:title]
    @year = person[:year]
    @notes = person[:notes]
end 

def self.all
  @@books
end

def self.clear
  @@books = []
end

  end