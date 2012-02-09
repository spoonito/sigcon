class CreateFamilies < ActiveRecord::Migration
  def self.up
    create_table :families do |t|
      t.integer :process_number
      t.string :family_type
      t.string :graffar
      t.string :duval
      t.integer :total_elements
      t.boolean :is_total_el_diff
      t.text :comments
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :families
  end
end
