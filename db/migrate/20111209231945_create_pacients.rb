class CreatePacients < ActiveRecord::Migration
  def self.up
    create_table :pacients do |t|
      t.integer :family_id
      t.string :name
      t.date :birth
      t.string :gender
      t.boolean :pnv
      t.string :occupation
      t.string :work_status
      t.string :scholar_status
      t.string :social_status
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :pacients
  end
end
