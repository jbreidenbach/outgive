class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :university_id
      t.integer :school_id
      t.integer :unicode
      t.integer :schoolcode
      t.string :uniname
      t.string :schoolname
      t.integer :campaign_id
      t.string :campaign_name
      t.integer :campaigncode

      t.timestamps
    end
  end
end
