class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :auther
      t.integer :price

      t.timestamps
    end
  end
end
