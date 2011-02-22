class AddDiagnoisIdToTreatment < ActiveRecord::Migration
  def self.up
    add_column :treatments, :diagnosis_id, :integer
  end

  def self.down
    remove_column :treatments, :diagnosis_id
  end
end
