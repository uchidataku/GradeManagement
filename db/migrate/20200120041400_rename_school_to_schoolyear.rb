class RenameSchoolToSchoolyear < ActiveRecord::Migration[5.2]
  def change
    rename_table :school_and_schoolterms, :schoolyear_and_schoolterms
  end
end
