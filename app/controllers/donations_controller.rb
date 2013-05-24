class DonationsController < ApplicationController



  def index
    redirect_to root_url, notice: "Nice try"
  end


  # GET /donations/1
  # GET /donations/1.json
  def show
    require'date'
    @donation = Donation.find(params[:id])
    @university = Donation.find_by_id(params[:id]).university_id
    @school = Donation.find_by_id(params[:id]).school_id
    @campaign = Donation.find_by_id(params[:id]).campaign_id
    @section = Donation.find_by_id(params[:id]).section_id

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donation }
    end
  end

  # GET /donations/new
  # GET /donations/new.json
  def new
    @donation = Donation.new
    @donation.university = University.find_by_id(params[:university_id])
    @donation.school = School.find_by_schoolcode(params[:school_id])
    @donation.campaign = Campaign.find_by_id(params[:campaign_id])
    @donation.section = Section.find_by_id(params[:section_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donation }
      format.js
    end
  end

  # GET /donations/1/edit
  def edit
    @donation = Donation.find(params[:id])
  end

  # POST /donations
  # POST /donations.json
  def create
    @donation = Donation.new(params[:donation])
    @donation.user = current_user
    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'Donation was successfully created.' }
        format.json { render json: @donation, status: :created, location: @donation }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /donations/1
  # PUT /donations/1.json
  def update
    @donation = Donation.find(params[:id])

    respond_to do |format|
      if @donation.update_attributes(params[:donation])
        format.html { redirect_to @donation, notice: 'Donation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donations/1
  # DELETE /donations/1.json
  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy

    respond_to do |format|
      format.html { redirect_to user_url(current_user.id) }
      format.json { head :no_content }
      format.js
    end
  end
end

