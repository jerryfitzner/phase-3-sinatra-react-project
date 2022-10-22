class CreateDonors < ActiveRecord::Migration[6.1]
  def change
    create_table :donors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :donation
      t.integer :student_id
      t.timestamps
    end
  end
end
