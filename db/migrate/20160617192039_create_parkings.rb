class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :address

      t.timestamps
    end
  end
end
