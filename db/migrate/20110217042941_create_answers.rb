class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_variant_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end