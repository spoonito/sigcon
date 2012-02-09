class DiabetesConsultationsController < ApplicationController
  # GET /diabetes_consultations
  # GET /diabetes_consultations.xml
  def index
    @diabetes_consultations = DiabetesConsultation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diabetes_consultations }
    end
  end

  # GET /diabetes_consultations/1
  # GET /diabetes_consultations/1.xml
  def show
    @diabetes_consultation = DiabetesConsultation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diabetes_consultation }
    end
  end

  # GET /diabetes_consultations/new
  # GET /diabetes_consultations/new.xml
  def new
    @diabetes_consultation = DiabetesConsultation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diabetes_consultation }
    end
  end

  # GET /diabetes_consultations/1/edit
  def edit
    @diabetes_consultation = DiabetesConsultation.find(params[:id])
  end

  # POST /diabetes_consultations
  # POST /diabetes_consultations.xml
  def create
    @diabetes_consultation = DiabetesConsultation.new(params[:diabetes_consultation])

    respond_to do |format|
      if @diabetes_consultation.save
        format.html { redirect_to(@diabetes_consultation, :notice => 'Diabetes consultation was successfully created.') }
        format.xml  { render :xml => @diabetes_consultation, :status => :created, :location => @diabetes_consultation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diabetes_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diabetes_consultations/1
  # PUT /diabetes_consultations/1.xml
  def update
    @diabetes_consultation = DiabetesConsultation.find(params[:id])

    respond_to do |format|
      if @diabetes_consultation.update_attributes(params[:diabetes_consultation])
        format.html { redirect_to(@diabetes_consultation, :notice => 'Diabetes consultation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diabetes_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diabetes_consultations/1
  # DELETE /diabetes_consultations/1.xml
  def destroy
    @diabetes_consultation = DiabetesConsultation.find(params[:id])
    @diabetes_consultation.destroy

    respond_to do |format|
      format.html { redirect_to(diabetes_consultations_url) }
      format.xml  { head :ok }
    end
  end
end
