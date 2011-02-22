class CreateAnswerVariants < ActiveRecord::Migration
  def self.up
    create_table :answer_variants do |t|
      t.string :body

      t.timestamps
    end
  end

  def self.down
    drop_table :answer_variants
  end
end
