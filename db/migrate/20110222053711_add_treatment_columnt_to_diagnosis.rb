class AddTreatmentColumntToDiagnosis < ActiveRecord::Migration
  def self.up
    add_column :diagnoses, :treatment_id, :integer
  end

  def self.down
    remove_column :diagnoses, :treatment_id
  end
end
