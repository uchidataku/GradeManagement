class CreatePeriodicalInspections < ActiveRecord::Migration[5.2]
  def change
    create_table :periodical_inspections do |t|
      t.string :name

      t.timestamps
    end
  end
end
