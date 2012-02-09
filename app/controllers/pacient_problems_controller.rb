class PacientProblemsController < ApplicationController
  # GET /pacient_problems
  # GET /pacient_problems.xml
  def index
    @pacient_problems = PacientProblem.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pacient_problems }
    end
  end

  # GET /pacient_problems/1
  # GET /pacient_problems/1.xml
  def show
    @pacient_problem = PacientProblem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pacient_problem }
    end
  end

  # GET /pacient_problems/new
  # GET /pacient_problems/new.xml
  def new
    @pacient_problem = PacientProblem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pacient_problem }
    end
  end

  # GET /pacient_problems/1/edit
  def edit
    @pacient_problem = PacientProblem.find(params[:id])
  end

  # POST /pacient_problems
  # POST /pacient_problems.xml
  def create
    @pacient_problem = PacientProblem.new(params[:pacient_problem])

    respond_to do |format|
      if @pacient_problem.save
        format.html { redirect_to(@pacient_problem, :notice => t("flash.notices.model.pacient_problem.created")) }
        format.xml  { render :xml => @pacient_problem, :status => :created, :location => @pacient_problem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pacient_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pacient_problems/1
  # PUT /pacient_problems/1.xml
  def update
    @pacient_problem = PacientProblem.find(params[:id])

    respond_to do |format|
      if @pacient_problem.update_attributes(params[:pacient_problem])
        format.html { redirect_to(@pacient_problem, :notice => t("flash.notices.model.pacient_problem.updated")) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pacient_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pacient_problems/1
  # DELETE /pacient_problems/1.xml
  def destroy
    @pacient_problem = PacientProblem.find(params[:id])
    @pacient_problem.destroy

    respond_to do |format|
      format.html { redirect_to(pacient_problems_url) }
      format.xml  { head :ok }
    end
  end
end
