class Section < ActiveRecord::Base
  attr_accessible :campaign_id, :campaign_name, :campaigncode, :name, :school_id, :schoolcode, :schoolname, :unicode, :uniname, :university_id

  belongs_to :universities
  belongs_to :schools
  belongs_to :campaigns
  has_many :donations
  has_many :users, :through => :donations

end
