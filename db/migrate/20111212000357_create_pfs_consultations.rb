class CreatePfsConsultations < ActiveRecord::Migration
  def self.up
    create_table :pfs_consultations do |t|
      t.string :anticoncepcional
      t.string :citology
      t.string :ths
      t.string :monitoring_pf
      t.string :monitoring_vc

      t.timestamps
    end
  end

  def self.down
    drop_table :pfs_consultations
  end
end
