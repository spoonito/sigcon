class CreateMaternityConsultations < ActiveRecord::Migration
  def self.up
    create_table :maternity_consultations do |t|
      t.integer :age_weeks
      t.integer :age_days
      t.string :puerperio_revision
      t.string :companion
      t.integer :risk
      t.boolean :mental_risk
      t.string :citology

      t.timestamps
    end
  end

  def self.down
    drop_table :maternity_consultations
  end
end
