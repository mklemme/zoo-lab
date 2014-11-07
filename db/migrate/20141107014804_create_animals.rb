class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :photo
      t.references :zoo, index: true

      t.timestamps
    end
  end
end
