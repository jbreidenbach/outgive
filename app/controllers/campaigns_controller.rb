class CampaignsController < ApplicationController

  def show
    @campaign = Campaign.find(params[:id])
    @section = Section.where(:campaign_id => params[:id])
    @donations = Donation.where(:campaign_id => params[:id])
    @find = Section.find_by_campaign_id(@campaign)

      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaign }
    end
  end

end
