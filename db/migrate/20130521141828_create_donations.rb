class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :university_id
      t.integer :school_id
      t.integer :campaign_id
      t.integer :section_id
      t.integer :value
      t.integer :grad_year
      t.integer :private
      t.string :uniname
      t.string :schoolname
      t.integer :unicode
      t.integer :schoolcode
      t.string :section

      t.timestamps
    end
  end
end
