class AddImageUrlToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :image_url, :string
  end
end
