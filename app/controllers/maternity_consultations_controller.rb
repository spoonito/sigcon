class MaternityConsultationsController < ApplicationController
  # GET /maternity_consultations
  # GET /maternity_consultations.xml
  def index
    @maternity_consultations = MaternityConsultation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maternity_consultations }
    end
  end

  # GET /maternity_consultations/1
  # GET /maternity_consultations/1.xml
  def show
    @maternity_consultation = MaternityConsultation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maternity_consultation }
    end
  end

  # GET /maternity_consultations/new
  # GET /maternity_consultations/new.xml
  def new
    @maternity_consultation = MaternityConsultation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maternity_consultation }
    end
  end

  # GET /maternity_consultations/1/edit
  def edit
    @maternity_consultation = MaternityConsultation.find(params[:id])
  end

  # POST /maternity_consultations
  # POST /maternity_consultations.xml
  def create
    @maternity_consultation = MaternityConsultation.new(params[:maternity_consultation])

    respond_to do |format|
      if @maternity_consultation.save
        format.html { redirect_to(@maternity_consultation, :notice => 'Maternity consultation was successfully created.') }
        format.xml  { render :xml => @maternity_consultation, :status => :created, :location => @maternity_consultation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maternity_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maternity_consultations/1
  # PUT /maternity_consultations/1.xml
  def update
    @maternity_consultation = MaternityConsultation.find(params[:id])

    respond_to do |format|
      if @maternity_consultation.update_attributes(params[:maternity_consultation])
        format.html { redirect_to(@maternity_consultation, :notice => 'Maternity consultation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maternity_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maternity_consultations/1
  # DELETE /maternity_consultations/1.xml
  def destroy
    @maternity_consultation = MaternityConsultation.find(params[:id])
    @maternity_consultation.destroy

    respond_to do |format|
      format.html { redirect_to(maternity_consultations_url) }
      format.xml  { head :ok }
    end
  end
end
