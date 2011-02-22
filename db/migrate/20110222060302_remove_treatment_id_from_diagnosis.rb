class RemoveTreatmentIdFromDiagnosis < ActiveRecord::Migration
  def self.up
    remove_column :diagnoses, :treatment_id
  end

  def self.down
    add_column :diagnoses, :treatment_id, :integer
  end
end
