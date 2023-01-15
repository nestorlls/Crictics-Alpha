class CreateInvolvedCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :involved_companies do |t|
      t.references :company, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.boolean :developer
      t.string :publisher
      t.string :boolean

      t.timestamps
    end
  end
end
