class UniversitiesController < ApplicationController

  def index
    if params[:keyword].present?
      keyword = params[:keyword].downcase
      @universities = University.where("LOWER(uniname) LIKE ?",
                                "%#{keyword}%")
      @universities = @universities.order('id asc')
    else
      @universities = University.order('id asc')
    end
    @universities = @universities.paginate(:page => params[:page], :per_page => 44)

    # @universities = University.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @universities }
    # end
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
    @university = University.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @university }
    end
  end

end

