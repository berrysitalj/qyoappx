class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :enum
      t.string :name
      t.string :dname

      t.timestamps
    end
  end
end
