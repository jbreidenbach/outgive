class Donation < ActiveRecord::Base
  attr_accessible :campaign_id, :grad_year, :private, :school_id, :schoolcode, :schoolname, :section, :section_id, :unicode, :uniname, :university_id, :user_id, :value

  belongs_to :user
  belongs_to :university
  belongs_to :school
  belongs_to :campaign
  belongs_to :section

# def university
#   return University.where(:id => :university_id)
# end

def donation_amount
  number_to_currency(self.value)
end

def total_donation
  total = self.value
  if total.nil?
    total = self.value
  end
  total
end

end

