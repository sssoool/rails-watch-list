class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :post_url
      t.string :overview
      t.integer :rating

      t.timestamps
    end
  end
end
