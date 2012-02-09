class CreateConsultationMotivations < ActiveRecord::Migration
  def self.up
    create_table :consultation_motivations do |t|
      t.integer :consultation_id
      t.integer :ipcp_id

      t.timestamps
    end
  end

  def self.down
    drop_table :consultation_motivations
  end
end
