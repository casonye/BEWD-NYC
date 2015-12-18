class CreateWorkshirts < ActiveRecord::Migration
  def change
    create_table :workshirts do |t|
      t.string :sleeves
      t.string :string
      t.string :color
      t.string :string
      t.string :size
      t.string :integer

      t.timestamps null: false
    end
  end
end
