class User < ActiveRecord::Base

  has_many :donations
  has_many :sections, :through => :donations
  has_many :campaigns, :through => :donations
  has_many :universities, :through => :donations
  has_many :schools, :through => :donations

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
