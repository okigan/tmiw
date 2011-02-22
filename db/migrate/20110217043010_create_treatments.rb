class CreateTreatments < ActiveRecord::Migration
  def self.up
    create_table :treatments do |t|
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :treatments
  end
end
