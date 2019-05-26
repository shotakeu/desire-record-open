class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  # GET /records
  # GET /records.json
  def index
    # default
    #@records = Record.all
    
    ## Return records created today.
    @records = Record.where(date: Date.today)
  end
  
  # GET /records/show_date?date=2019-05-25  
  def show_date
    @records = Record.where(date: params[:date])
    render 'show_date'
  end

  # GET /records/1
  # GET /records/1.json
  def show
    @record = Record.find(params[:id])
  end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
    @record = Record.find(params[:id])
  end

  # POST /records
  # POST /records.json
  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        #format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.html { redirect_to show_date_records_path(date: @record[:date]), notice: 'Record was successfully created.' }
        format.json { render :show_date, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    @record = Record.find(params[:id])
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      #@record = Record.find(params[:id])
      @record = Record.where(date: Date.today)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:hour, :activity, :desire_level, :feeling_level, :comment, :date)
    end
end
