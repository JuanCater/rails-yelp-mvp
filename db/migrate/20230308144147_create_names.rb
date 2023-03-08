class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :adrres
      t.integer :phone_number
      t.string :category

      t.timestamps
    end
  end
end
