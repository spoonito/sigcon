class CreatePediatricConsultations < ActiveRecord::Migration
  def self.up
    create_table :pediatric_consultations do |t|
      t.string :companion

      t.timestamps
    end
  end

  def self.down
    drop_table :pediatric_consultations
  end
end
