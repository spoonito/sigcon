class CreateConsultations < ActiveRecord::Migration
  def self.up
    create_table :consultations do |t|
      t.integer :pacient_id
      t.date :consult_date
      t.boolean :is_consult
      t.integer :consultation_type_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :consultations
  end
end
