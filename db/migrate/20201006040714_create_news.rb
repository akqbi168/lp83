class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|

      t.integer :year, limit: 2199
      t.integer :month, limit: 12
      t.integer :date, limit: 31
      t.string :title
      t.boolean :published
      t.timestamps
    end
  end
end
