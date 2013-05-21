class School < ActiveRecord::Base
  attr_accessible :schoolcode, :schoolname, :schoolwebsite, :unicode, :uniname, :university_id

  belongs_to :universities
  has_many :campaigns
  has_many :donations
  has_many :users, :through => :donations

end
