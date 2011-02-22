class QuestionCorrelationsController < ApplicationController
  # GET /question_correlations
  # GET /question_correlations.xml
  def index
    @question_correlations = QuestionCorrelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_correlations }
    end
  end

  # GET /question_correlations/1
  # GET /question_correlations/1.xml
  def show
    @question_correlation = QuestionCorrelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_correlation }
    end
  end

  # GET /question_correlations/new
  # GET /question_correlations/new.xml
  def new
    @question_correlation = QuestionCorrelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_correlation }
    end
  end

  # GET /question_correlations/1/edit
  def edit
    @question_correlation = QuestionCorrelation.find(params[:id])
  end

  # POST /question_correlations
  # POST /question_correlations.xml
  def create
    @question_correlation = QuestionCorrelation.new(params[:question_correlation])

    respond_to do |format|
      if @question_correlation.save
        format.html { redirect_to(@question_correlation, :notice => 'Question correlation was successfully created.') }
        format.xml  { render :xml => @question_correlation, :status => :created, :location => @question_correlation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_correlation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_correlations/1
  # PUT /question_correlations/1.xml
  def update
    @question_correlation = QuestionCorrelation.find(params[:id])

    respond_to do |format|
      if @question_correlation.update_attributes(params[:question_correlation])
        format.html { redirect_to(@question_correlation, :notice => 'Question correlation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_correlation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_correlations/1
  # DELETE /question_correlations/1.xml
  def destroy
    @question_correlation = QuestionCorrelation.find(params[:id])
    @question_correlation.destroy

    respond_to do |format|
      format.html { redirect_to(question_correlations_url) }
      format.xml  { head :ok }
    end
  end
end
