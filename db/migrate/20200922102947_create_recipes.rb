class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name,         null: false
      t.text :explanation,           null: false
      t.string :material_1,          null: false
      t.string :material_2
      t.string :material_3
      t.string :material_4
      t.string :material_5
      t.string :material_6
      t.string :material_7
      t.string :material_8
      t.string :material_9
      t.string :material_10
      t.string :material_1_amount,   null: false
      t.string :material_2_amount
      t.string :material_3_amount
      t.string :material_4_amount
      t.string :material_5_amount
      t.string :material_6_amount
      t.string :material_7_amount
      t.string :material_8_amount
      t.string :material_9_amount
      t.string :material_10_amount
      t.text   :how_to_make_1,       null: false
      t.text   :how_to_make_2
      t.text   :how_to_make_3
      t.text   :how_to_make_4
      t.text   :how_to_make_5
      t.text   :how_to_make_6
      t.text   :how_to_make_7
      t.text   :how_to_make_8
      t.text   :how_to_make_9
      t.text   :how_to_make_10
      t.text   :point,               null: false
      t.references   :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
