
class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |r|
      r.string :name
      r.string :favorite_genre
    end
  end
end
