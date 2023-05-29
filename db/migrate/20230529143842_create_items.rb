class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :price_per_day
      t.string :category_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
