class Campaign < ActiveRecord::Base
  attr_accessible :campaign_name, :campaigncode, :schoolcode, :schoolname, :schoool_id, :unicode, :uniname, :university_id

  belongs_to :universities
  belongs_to :schools
  has_many :donations
  has_many :sections
  has_many :users, :through => :donations

end
