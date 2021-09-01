class AddScoreToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :score, :integer, limit: 100
  end
end
