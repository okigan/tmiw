class CreateQuestionCorrelations < ActiveRecord::Migration
  def self.up
    create_table :question_correlations do |t|
      t.integer :question_id
      t.integer :followup_question_id
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :question_correlations
  end
end
