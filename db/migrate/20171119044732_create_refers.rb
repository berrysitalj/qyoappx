class CreateRefers < ActiveRecord::Migration[5.1]
  def change
    create_table :refers do |t|
      t.string :filename

      t.timestamps
    end
  end
end
