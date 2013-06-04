class MedicalRecordsController < ApplicationController
  # GET /medical_records
  # GET /medical_records.json
  def index
    @medical_records = MedicalRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medical_records }
    end
  end

  # GET /medical_records/1
  # GET /medical_records/1.json
  def show
    @medical_record = MedicalRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medical_record }
    end
  end

  # GET /medical_records/new
  # GET /medical_records/new.json
  def new
    @medical_record = MedicalRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medical_record }
    end
  end

  # GET /medical_records/1/edit
  def edit
    @medical_record = MedicalRecord.find(params[:id])
  end

  # POST /medical_records
  # POST /medical_records.json
  def create
    @medical_record = MedicalRecord.new(params[:medical_record])

    respond_to do |format|
      if @medical_record.save
        format.html { redirect_to @medical_record, notice: 'Medical record was successfully created.' }
        format.json { render json: @medical_record, status: :created, location: @medical_record }
      else
        format.html { render action: "new" }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medical_records/1
  # PUT /medical_records/1.json
  def update
    @medical_record = MedicalRecord.find(params[:id])

    respond_to do |format|
      if @medical_record.update_attributes(params[:medical_record])
        format.html { redirect_to @medical_record, notice: 'Medical record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_records/1
  # DELETE /medical_records/1.json
  def destroy
    @medical_record = MedicalRecord.find(params[:id])
    @medical_record.destroy

    respond_to do |format|
      format.html { redirect_to medical_records_url }
      format.json { head :no_content }
    end
  end
end
