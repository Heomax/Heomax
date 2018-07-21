class CreateSubcriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subcriptions do |t|
      t.string :email
      t.string :tag
      t.integer :quantity

      t.timestamps
    end
  end
end