class CreateDiagnosisCorrelations < ActiveRecord::Migration
  def self.up
    create_table :diagnosis_correlations do |t|
      t.integer :question_id
      t.integer :answer_variant_id
      t.integer :diagnosis_id
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :diagnosis_correlations
  end
end
