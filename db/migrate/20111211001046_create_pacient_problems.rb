class CreatePacientProblems < ActiveRecord::Migration
  def self.up
    create_table :pacient_problems do |t|
      t.integer :pacient_id
      t.integer :ipcp_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :pacient_problems
  end
end
