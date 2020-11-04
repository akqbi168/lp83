class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|

      t.string :name
      t.string :email
      t.text :body
      t.boolean :visible, default: true
      t.timestamps
    end
  end
end
