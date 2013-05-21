class University < ActiveRecord::Base
  attr_accessible :unicode, :uniname, :uniwebsite

  has_many :schools
  has_many :campaigns
  has_many :donations
  has_many :users, :through => :donations

end
