class InfosController < ApplicationController

require 'twitter-bootstrap-rails'
  def index
    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @universities }
    end
  end

end
