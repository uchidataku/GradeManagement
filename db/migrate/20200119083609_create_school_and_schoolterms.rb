class CreateSchoolAndSchoolterms < ActiveRecord::Migration[5.2]
  def change
    create_table :school_and_schoolterms do |t|
      t.string :name

      t.timestamps
    end
  end
end
