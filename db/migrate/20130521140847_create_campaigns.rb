class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :campaign_name
      t.integer :campaigncode
      t.integer :university_id
      t.integer :schoool_id
      t.integer :unicode
      t.string :uniname
      t.integer :schoolcode
      t.string :schoolname

      t.timestamps
    end
  end
end
