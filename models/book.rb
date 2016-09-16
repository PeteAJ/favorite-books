class Book
attr_accessor :author, :title, :year, :notes

@@books = []

def initialize(person) 
  @author = person[:author]
    @title = person[:title]
    @year = person[:year]
    @notes = person[:notes]
    @@books << self
end 

def self.all
  @@books
end

def self.clear
  @@books = []
end

  end