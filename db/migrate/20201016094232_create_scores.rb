class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.references :game, null: false, foreign_key: true
      t.decimal :critic_score
      t.decimal :user_score

      t.timestamps
    end
  end
end
