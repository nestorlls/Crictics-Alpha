class AddDefaultCategoryToGames < ActiveRecord::Migration[7.0]
  def change
    # reversible do |dir|
    #                       #  table   column    type     default
    #   dir.up {change_column :games, :category, :integer, default: 0 }
    #   dir.down {change_column :games, :category, :integer, default: nil }
    # end
    change_column_default :games, :category, from: nil, to: 0
  end
end
