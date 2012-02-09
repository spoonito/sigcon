class PfsConsultationsController < ApplicationController
  # GET /pfs_consultations
  # GET /pfs_consultations.xml
  def index
    @pfs_consultations = PfsConsultation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pfs_consultations }
    end
  end

  # GET /pfs_consultations/1
  # GET /pfs_consultations/1.xml
  def show
    @pfs_consultation = PfsConsultation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pfs_consultation }
    end
  end

  # GET /pfs_consultations/new
  # GET /pfs_consultations/new.xml
  def new
    @pfs_consultation = PfsConsultation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pfs_consultation }
    end
  end

  # GET /pfs_consultations/1/edit
  def edit
    @pfs_consultation = PfsConsultation.find(params[:id])
  end

  # POST /pfs_consultations
  # POST /pfs_consultations.xml
  def create
    @pfs_consultation = PfsConsultation.new(params[:pfs_consultation])

    respond_to do |format|
      if @pfs_consultation.save
        format.html { redirect_to(@pfs_consultation, :notice => 'Pfs consultation was successfully created.') }
        format.xml  { render :xml => @pfs_consultation, :status => :created, :location => @pfs_consultation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pfs_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pfs_consultations/1
  # PUT /pfs_consultations/1.xml
  def update
    @pfs_consultation = PfsConsultation.find(params[:id])

    respond_to do |format|
      if @pfs_consultation.update_attributes(params[:pfs_consultation])
        format.html { redirect_to(@pfs_consultation, :notice => 'Pfs consultation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pfs_consultation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pfs_consultations/1
  # DELETE /pfs_consultations/1.xml
  def destroy
    @pfs_consultation = PfsConsultation.find(params[:id])
    @pfs_consultation.destroy

    respond_to do |format|
      format.html { redirect_to(pfs_consultations_url) }
      format.xml  { head :ok }
    end
  end
end
