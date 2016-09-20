
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |b|
      b.string :author
      b.string :title
      b.integer :year
      b.string :notes
    end
  end
end
