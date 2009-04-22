class CreateDeathMasterFileTable < ActiveRecord::Migration
  
  def self.up
    create_table :death_master_files do |t|
      t.string :social_security_number
      t.string  :last_name
      t.string  :name_suffix
      t.string :first_name
      t.string :middle_name
      t.string :verify_proof_code
      t.date  :date_of_death
      t.date  :date_of_birth
      t.string  :state_of_residence
      t.string :last_known_zip_residence
      t.string :last_known_zip_payment
      t.time_stamps
      t.date :as_of
    end
    add_index :death_master_files, :social_security_number, :unique => true
    add_index :death_master_files, :as_of
  end

  def self.down
    drop_table :death_master_files
  end
end
