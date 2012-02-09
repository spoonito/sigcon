class CreateDiabetesConsultations < ActiveRecord::Migration
  def self.up
    create_table :diabetes_consultations do |t|
      t.string :diabete_type
      t.integer :hba_one_c
      t.decimal :imc
      t.integer :ta_up
      t.integer :ta_lower
      t.string :microalbuminuria
      t.integer :colesterol
      t.string :monitoring_dm
      t.string :antiagregante
      t.integer :pabd
      t.integer :hdl
      t.integer :tricliceridos
      t.string :ofl
      t.string :ecg
      t.integer :diagnose_year

      t.timestamps
    end
  end

  def self.down
    drop_table :diabetes_consultations
  end
end
