class CreateOenologistScores < ActiveRecord::Migration[5.2]
  def change
    create_table :oenologist_scores do |t|
      t.references :wine, foreign_key: true
      t.references :oenologist, foreign_key: true
      t.integer :score, limit: 100

      t.timestamps
    end
  end
end
