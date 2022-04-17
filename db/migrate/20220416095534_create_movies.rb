class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.decimal :rating

      t.timestamps
    end
  end
end


#rails generate model Movies title:string overview:text poster_url:string rating:decimal
#rails generate model List name:string
#rails generate model Bookmark comment:text movie:references list:references
