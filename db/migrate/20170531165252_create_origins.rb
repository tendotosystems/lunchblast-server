class CreateOrigins < ActiveRecord::Migration[5.0]
  def change
    create_table :origins do |t|
      t.float :latitude
      t.float :longitude
      t.string :name

      t.timestamps
    end
  end
end
