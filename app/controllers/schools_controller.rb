class SchoolsController < ApplicationController

  def index
    if params[:keyword].present?
      keyword = params[:keyword].downcase
      @schools = School.where("LOWER(uniname) LIKE ?",
                                "%#{keyword}%")
      @schools = @schools.order('id asc')
    else
      @schools = School.order('id asc')
    end

    # @schools = School.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @schools }
    # end
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
    @school = School.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @school }
    end
  end

end
