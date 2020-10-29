class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year_of_release
      t.references :genre, null: false, foreign_key: true
      t.references :publisher, null: true, foreign_key: true
      t.references :developer, null: true, foreign_key: true
      t.references :platform, null: true, foreign_key: true
      t.references :rating, null: true, foreign_key: true

      t.timestamps
    end
  end
end
