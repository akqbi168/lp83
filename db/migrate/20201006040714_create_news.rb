class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|

      t.integer :year
      t.integer :month
      t.integer :date
      t.string :title
      t.boolean :published
      t.timestamps
    end
  end
end
