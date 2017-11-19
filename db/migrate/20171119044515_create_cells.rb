class CreateCells < ActiveRecord::Migration[5.1]
  def change
    create_table :cells do |t|
      t.string :data1

      t.timestamps
    end
  end
end
