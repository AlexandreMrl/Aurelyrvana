class CreateMassageTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :massage_types do |t|
      t.string :name
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
