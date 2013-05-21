# users = [
#   { :name => "John Breidenbach", :email => "bbach07@gmail.com" },
#   { :name => "Sonha Hoang", :email => "sonhahoang@gmail.com"},
#   { :name => "Viren Tellis", :email => "vtellis@gmail.com"}
# ]

# User.destroy_all
# users.each do |user_hash|
#   a = User.new
#   a.name = user_hash[:name]
#   a.email = user_hash[:email]
#   a.save
# end

universities = [
{ :uniname => "Columbia University", :uniwebsite => "http://www.columbia.edu/", :unicode => "422" },
{ :uniname => "Dartmouth College", :uniwebsite => "http://www.dartmouth.edu/", :unicode => "475" },
{ :uniname => "Harvard University", :uniwebsite => "http://www.harvard.edu/", :unicode => "713" },
{ :uniname => "Indiana University - Bloomington", :uniwebsite => "http://www.iub.edu/", :unicode => "776" },
{ :uniname => "Massachusetts Institute of Technology", :uniwebsite => "http://web.mit.edu/", :unicode => "992" },
{ :uniname => "Michigan State University", :uniwebsite => "http://www.msu.edu/", :unicode => "1039" },
{ :uniname => "New York University", :uniwebsite => "http://www.nyu.edu/", :unicode => "1158" },
{ :uniname => "Northwestern University", :uniwebsite => "http://www.northwestern.edu/", :unicode => "1203" },
{ :uniname => "Ohio State University", :uniwebsite => "http://www.osu.edu/", :unicode => "1224" },
{ :uniname => "Pennsylvania State University", :uniwebsite => "http://www.psu.edu/", :unicode => "1286" },
{ :uniname => "Princeton University", :uniwebsite => "http://www.princeton.edu/", :unicode => "1345" },
{ :uniname => "Purdue University", :uniwebsite => "http://www.purdue.edu/", :unicode => "1348" },
{ :uniname => "Stanford University", :uniwebsite => "http://www.stanford.edu/", :unicode => "1605" },
{ :uniname => "University of California - Berkeley", :uniwebsite => "http://www.berkeley.edu/", :unicode => "1761" },
{ :uniname => "University of Chicago", :uniwebsite => "http://www.uchicago.edu/", :unicode => "1776" },
{ :uniname => "University of Illinois - Urbana-Champaign", :uniwebsite => "http://illinois.edu/", :unicode => "1808" },
{ :uniname => "University of Iowa", :uniwebsite => "http://www.uiowa.edu/", :unicode => "1810" },
{ :uniname => "University of Michigan", :uniwebsite => "http://www.umich.edu/", :unicode => "1843" },
{ :uniname => "University of Minnesota - Twin Cities", :uniwebsite => "http://www.umn.edu/", :unicode => "1849" },
{ :uniname => "University of Nebraska - Lincoln", :uniwebsite => "http://www.unl.edu/", :unicode => "1864" },
{ :uniname => "University of Pennsylvania", :uniwebsite => "http://www.upenn.edu/", :unicode => "1895" },
{ :uniname => "University of Wisconsin - Madison", :uniwebsite => "http://www.wisc.edu/", :unicode => "1997" }
]

University.destroy_all
universities.each do |university_hash|
  u = University.new
  u.uniname = university_hash[:uniname]
  u.uniwebsite = university_hash[:uniwebsite]
  u.unicode = university_hash[:unicode]
  u.save
end

 schools = [
   { :schoolname => "Kellogg School of Management", :schoolwebsite => "http://www.kellogg.northwestern.edu/", :schoolcode => "1", :university_id => University.find_by_uniname("Northwestern University").id, :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname},
   { :schoolname => "Northwestern University School of Law", :schoolwebsite => "http://www.law.northwestern.edu", :schoolcode => "2", :university_id => University.find_by_uniname("Northwestern University").id, :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname},
   { :schoolname => "Graduate School of Business (GSB)", :schoolwebsite => "http://www.gsb.stanford.edu/", :schoolcode => "10", :university_id => University.find_by_uniname("Stanford University").id, :unicode => University.find_by_uniname("Stanford University").unicode, :uniname => University.find_by_uniname("Stanford University").uniname},
   { :schoolname => "Stanford Law School", :schoolwebsite => "http://www.law.stanford.edu", :schoolcode => "11", :university_id => University.find_by_uniname("Stanford University").id, :unicode => University.find_by_uniname("Stanford University").unicode, :uniname => University.find_by_uniname("Stanford University").uniname},
   { :schoolname => "Booth School of Business", :schoolwebsite => "http://www.chicagobooth.edu", :schoolcode => "21", :university_id => University.find_by_uniname("University of Chicago").id, :unicode => University.find_by_uniname("University of Chicago").unicode, :uniname => University.find_by_uniname("University of Chicago").uniname},
   { :schoolname => "University of Chicago Law School", :schoolwebsite => "http://www.law.uchicago.edu", :schoolcode => "21", :university_id => University.find_by_uniname("University of Chicago").id, :unicode => University.find_by_uniname("University of Chicago").unicode, :uniname => University.find_by_uniname("University of Chicago").uniname},
   { :schoolname => "The Wharton School", :schoolwebsite => "http://www.wharton.upenn.edu", :schoolcode => "30", :university_id => University.find_by_uniname("University of Pennsylvania").id, :unicode => University.find_by_uniname("University of Pennsylvania").unicode, :uniname => University.find_by_uniname("University of Pennsylvania").uniname},
   { :schoolname => "University of Pennsylvania Law School", :schoolwebsite => "https://www.law.upenn.edu", :schoolcode => "31", :university_id => University.find_by_uniname("University of Pennsylvania").id, :unicode => University.find_by_uniname("University of Pennsylvania").unicode, :uniname => University.find_by_uniname("University of Pennsylvania").uniname},
   { :schoolname => "Harvard Business School (HBS)", :schoolwebsite => "http://www.hbs.edu/", :schoolcode => "40", :university_id => University.find_by_uniname("Harvard University").id, :unicode => University.find_by_uniname("Harvard University").unicode, :uniname => University.find_by_uniname("Harvard University").uniname},
   { :schoolname => "Harvard Law School", :schoolwebsite => "http://www.law.harvard.edu", :schoolcode => "41", :university_id => University.find_by_uniname("Harvard University").id, :unicode => University.find_by_uniname("Harvard University").unicode, :uniname => University.find_by_uniname("Harvard University").uniname},
   { :schoolname => "Columbia Business School", :schoolwebsite => "http://www8.gsb.columbia.edu", :schoolcode => "50", :university_id => University.find_by_uniname("Columbia University").id, :unicode => University.find_by_uniname("Columbia University").unicode, :uniname => University.find_by_uniname("Columbia University").uniname},
   { :schoolname => "Columbia Law School", :schoolwebsite => "http://www.law.columbia.edu", :schoolcode => "51", :university_id => University.find_by_uniname("Columbia University").id, :unicode => University.find_by_uniname("Columbia University").unicode, :uniname => University.find_by_uniname("Columbia University").uniname},
   { :schoolname => "Sloan School of Managment", :schoolwebsite => "http://mitsloan.mit.edu", :schoolcode => "60", :university_id => University.find_by_uniname("Massachusetts Institute of Technology").id, :unicode => University.find_by_uniname("Massachusetts Institute of Technology").unicode, :uniname => University.find_by_uniname("Massachusetts Institute of Technology").uniname},
   { :schoolname => "Tuck School of Business", :schoolwebsite => "http://www.tuck.dartmouth.edu", :schoolcode => "70", :university_id => University.find_by_uniname("Dartmouth College").id, :unicode => University.find_by_uniname("Dartmouth College").unicode, :uniname => University.find_by_uniname("Dartmouth College").uniname},
   { :schoolname => "Haas School of Business", :schoolwebsite => "http://www.haas.berkeley.edu", :schoolcode => "80", :university_id => University.find_by_uniname("University of California - Berkeley").id, :unicode => University.find_by_uniname("University of California - Berkeley").unicode, :uniname => University.find_by_uniname("University of California - Berkeley").uniname},
   { :schoolname => "Berkeley Law", :schoolwebsite => "http://www.law.berkeley.edu", :schoolcode => "81", :university_id => University.find_by_uniname("University of California - Berkeley").id, :unicode => University.find_by_uniname("University of California - Berkeley").unicode, :uniname => University.find_by_uniname("University of California - Berkeley").uniname},
   { :schoolname => "Stern School of Business", :schoolwebsite => "http://www.stern.nyu.edu", :schoolcode => "90", :university_id => University.find_by_uniname("New York University").id, :unicode => University.find_by_uniname("New York University").unicode, :uniname => University.find_by_uniname("New York University").uniname},
   { :schoolname => "NY School of Law", :schoolwebsite => "http://www.law.nyu.edu/index.htm", :schoolcode => "91", :university_id => University.find_by_uniname("New York University").id, :unicode => University.find_by_uniname("New York University").unicode, :uniname => University.find_by_uniname("New York University").uniname},
   { :schoolname => "University of Michigan Law School", :schoolwebsite => "http://www.gsb.stanford.edu/", :schoolcode => "100", :university_id => University.find_by_uniname("University of Michigan").id, :unicode => University.find_by_uniname("University of Michigan").unicode, :uniname => University.find_by_uniname("University of Michigan").uniname}
 ]

 School.destroy_all
 schools.each do |school_hash|
   s = School.new
   s.schoolname = school_hash[:schoolname]
   s.schoolwebsite = school_hash[:schoolwebsite]
   s.schoolcode = school_hash[:schoolcode]
   s.university_id = school_hash[:university_id]
   s.unicode = school_hash[:unicode]
   s.uniname = school_hash[:uniname]
   s.save
end

campaigns = [
  { :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :campaign_name => "New Business Building", :campaigncode => "2", :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :campaign_name => "Minority Scholarships", :campaigncode => "3", :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :campaign_name => "Women in Business", :campaigncode => "4", :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "5", :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Northwestern University School of Law").id, :schoolcode => "2", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Northwestern University School of Law" },
  { :campaign_name => "Undergraduate 2013 Graduating Gift", :campaigncode => "6", :university_id => University.find_by_uniname("Northwestern University").id, :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname}
]

Campaign.destroy_all
campaigns.each do |campaign_hash|
  c = Campaign.new
  c.campaign_name = campaign_hash[:campaign_name]
  c.campaigncode = campaign_hash[:campaigncode]
  c.university_id = campaign_hash[:university_id]
  c.unicode = campaign_hash[:unicode]
  c.school_id = campaign_hash[:school_id]
  c.uniname = campaign_hash[:uniname]
  c.schoolname = campaign_hash[:schoolname]
  c.schoolcode = campaign_hash[:schoolcode]
  c.save
end

sections = [
  { :name => "Big Dogs", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Buckets", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Bullfrogs", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Cash Cows", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Highlanders", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Jive Turkeys", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Moose", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Poets", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" },
  { :name => "Road Runners", :campaign_name => "Class of 2013 Graduating Gift", :campaigncode => "1", :campaign_id => Campaign.find_by_campaigncode("1").id, :university_id => University.find_by_uniname("Northwestern University").id, :school_id => School.find_by_schoolname("Kellogg School of Management").id, :schoolcode => "1", :unicode => University.find_by_uniname("Northwestern University").unicode, :uniname => University.find_by_uniname("Northwestern University").uniname, :schoolname => "Kellogg School of Management" }
]

Section.destroy_all
sections.each do |section_hash|
  x = Section.new
  x.name = section_hash[:name]
  x.campaign_name = section_hash[:campaign_name]
  x.campaign_id = section_hash[:campaign_id]
  x.campaigncode = section_hash[:campaigncode]
  x.university_id = section_hash[:university_id]
  x.unicode = section_hash[:unicode]
  x.school_id = section_hash[:school_id]
  x.uniname = section_hash[:uniname]
  x.schoolname = section_hash[:schoolname]
  x.schoolcode = section_hash[:schoolcode]
  x.save
end

