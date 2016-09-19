class Reader
    attr_reader :name, :favorite_genre

    READERS = []

    def initialize(person)
      @name = person[:name]
      @favorite_genre = person[:favorite_genre]
      READERS << self

    end

def self.all
  READERS
end


  end
