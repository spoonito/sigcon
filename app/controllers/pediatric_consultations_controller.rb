class PediatricConsultationsController < ApplicationController
  # GET /pediatric_consultations
  # GET /pediatric_consultations.xml
  def index
    @pediatric_consultations = PediatricConsultation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pediatric_consultations }
    end
  end

  # GET /pediatric_consultations/1
  # GET /pediatric_consultations/1.xml
  def show
    @pediatric_consultation = PediatricConsultation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pediatric_consultation }
    end
  end

  # GET /pediatric_consultations/new
  # GET /pediatric_consultations/new.xml
  def new
    @pediatric_consultation = PediatricConsultation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pediatric_consultation }
    end
  end

  # GET /pediatric_consultations/1/edit
  def edit
    @pediatric_consultation = PediatricConsultation.find(params[:id])
  end

  # POST /pediatric_consultations
  # POST /pediatric_consultations.xml
  def create
    @pediatric_consultation = PediatricConsultation.new(params[:pediatric_consultation])

    respond_to do |format|
      if @pediatric_consultation.save
        format.html { redirect_to(@pediatric_consultation, :notice => 'Pediatric consultation was successfully created.') }
        format.xml  { render :xml => @pediatric_consultation, :status => :created, :location => @pediatric_consultation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pediatric_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pediatric_consultations/1
  # PUT /pediatric_consultations/1.xml
  def update
    @pediatric_consultation = PediatricConsultation.find(params[:id])

    respond_to do |format|
      if @pediatric_consultation.update_attributes(params[:pediatric_consultation])
        format.html { redirect_to(@pediatric_consultation, :notice => 'Pediatric consultation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pediatric_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatric_consultations/1
  # DELETE /pediatric_consultations/1.xml
  def destroy
    @pediatric_consultation = PediatricConsultation.find(params[:id])
    @pediatric_consultation.destroy

    respond_to do |format|
      format.html { redirect_to(pediatric_consultations_url) }
      format.xml  { head :ok }
    end
  end
end
