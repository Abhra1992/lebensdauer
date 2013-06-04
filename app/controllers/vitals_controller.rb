class VitalsController < ApplicationController
  # GET /vitals
  # GET /vitals.json
  def index
    @vitals = Vital.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vitals }
    end
  end

  # GET /vitals/1
  # GET /vitals/1.json
  def show
    @vital = Vital.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vital }
    end
  end

  # GET /vitals/new
  # GET /vitals/new.json
  def new
    @vital = Vital.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vital }
    end
  end

  # GET /vitals/1/edit
  def edit
    @vital = Vital.find(params[:id])
  end

  # POST /vitals
  # POST /vitals.json
  def create
    @vital = Vital.new(params[:vital])

    respond_to do |format|
      if @vital.save
        format.html { redirect_to @vital, notice: 'Vital was successfully created.' }
        format.json { render json: @vital, status: :created, location: @vital }
      else
        format.html { render action: "new" }
        format.json { render json: @vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vitals/1
  # PUT /vitals/1.json
  def update
    @vital = Vital.find(params[:id])

    respond_to do |format|
      if @vital.update_attributes(params[:vital])
        format.html { redirect_to @vital, notice: 'Vital was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitals/1
  # DELETE /vitals/1.json
  def destroy
    @vital = Vital.find(params[:id])
    @vital.destroy

    respond_to do |format|
      format.html { redirect_to vitals_url }
      format.json { head :no_content }
    end
  end
end
