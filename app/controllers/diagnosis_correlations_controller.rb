class DiagnosisCorrelationsController < ApplicationController
  # GET /diagnosis_correlations
  # GET /diagnosis_correlations.xml
  def index
    @diagnosis_correlations = DiagnosisCorrelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diagnosis_correlations }
    end
  end

  # GET /diagnosis_correlations/1
  # GET /diagnosis_correlations/1.xml
  def show
    @diagnosis_correlation = DiagnosisCorrelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diagnosis_correlation }
    end
  end

  # GET /diagnosis_correlations/new
  # GET /diagnosis_correlations/new.xml
  def new
    @diagnosis_correlation = DiagnosisCorrelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diagnosis_correlation }
    end
  end

  # GET /diagnosis_correlations/1/edit
  def edit
    @diagnosis_correlation = DiagnosisCorrelation.find(params[:id])
  end

  # POST /diagnosis_correlations
  # POST /diagnosis_correlations.xml
  def create
    @diagnosis_correlation = DiagnosisCorrelation.new(params[:diagnosis_correlation])

    respond_to do |format|
      if @diagnosis_correlation.save
        format.html { redirect_to(@diagnosis_correlation, :notice => 'Diagnosis correlation was successfully created.') }
        format.xml  { render :xml => @diagnosis_correlation, :status => :created, :location => @diagnosis_correlation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diagnosis_correlation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diagnosis_correlations/1
  # PUT /diagnosis_correlations/1.xml
  def update
    @diagnosis_correlation = DiagnosisCorrelation.find(params[:id])

    respond_to do |format|
      if @diagnosis_correlation.update_attributes(params[:diagnosis_correlation])
        format.html { redirect_to(@diagnosis_correlation, :notice => 'Diagnosis correlation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diagnosis_correlation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnosis_correlations/1
  # DELETE /diagnosis_correlations/1.xml
  def destroy
    @diagnosis_correlation = DiagnosisCorrelation.find(params[:id])
    @diagnosis_correlation.destroy

    respond_to do |format|
      format.html { redirect_to(diagnosis_correlations_url) }
      format.xml  { head :ok }
    end
  end
end
