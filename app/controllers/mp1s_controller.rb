class Mp1sController < ApplicationController
  # GET /mp1s
  # GET /mp1s.json
  def index
    @mp1s = Mp1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mp1s }
    end
  end

  # GET /mp1s/1
  # GET /mp1s/1.json
  def show
    @mp1 = Mp1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mp1 }
    end
  end

  # GET /mp1s/new
  # GET /mp1s/new.json
  def new
    @mp1 = Mp1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mp1 }
    end
  end

  # GET /mp1s/1/edit
  def edit
    @mp1 = Mp1.find(params[:id])
  end

  # POST /mp1s
  # POST /mp1s.json
  def create
    @mp1 = Mp1.new(params[:mp1])

    respond_to do |format|
      if @mp1.save
        format.html { redirect_to @mp1, notice: 'Mp1 was successfully created.' }
        format.json { render json: @mp1, status: :created, location: @mp1 }
      else
        format.html { render action: "new" }
        format.json { render json: @mp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mp1s/1
  # PUT /mp1s/1.json
  def update
    @mp1 = Mp1.find(params[:id])

    respond_to do |format|
      if @mp1.update_attributes(params[:mp1])
        format.html { redirect_to @mp1, notice: 'Mp1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mp1s/1
  # DELETE /mp1s/1.json
  def destroy
    @mp1 = Mp1.find(params[:id])
    @mp1.destroy

    respond_to do |format|
      format.html { redirect_to mp1s_url }
      format.json { head :no_content }
    end
  end
end
