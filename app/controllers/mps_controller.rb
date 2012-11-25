class MpsController < ApplicationController
  def view
    @mps = Mp.all

    respond_to do |format|
      format.html # view.html.erb
      format.json { render json: @mps }
    end
  end
  
  def new
    @mp = Mp.new
    @mp.pcs.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mp }
    end
  end

  def create
    @mp = Mp.new(params[:mp])

    respond_to do |format|
      if @mp.save
        format.html { redirect_to @mp, notice: 'Survey was successfully created.' }
        format.json { render json: @mp, status: :created, location: @mp }
      else
        format.html { render action: "new" }
        format.json { render json: @mp.errors, status: :unprocessable_entity }
      end
    end
  end

=begin
  class Mp < MpController
    def initialize(name, artist, duration)
      @name = name
      @artist = artist
      @duration = duration
    end
  end
=end

end
