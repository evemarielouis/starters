class CreateStarterPacks < ActiveRecord::Migration[7.1]
  def change
    create_table :starter_packs do |t|
      t.string :name
      t.text :icon
      t.text :title
      t.text :image_one
      t.text :image_two
      t.text :image_three
      t.text :image_four
      t.text :description

      t.timestamps
    end
  end
end
