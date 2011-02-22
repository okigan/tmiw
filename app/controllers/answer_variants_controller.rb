class AnswerVariantsController < ApplicationController
  # GET /answer_variants
  # GET /answer_variants.xml
  def index
    @answer_variants = AnswerVariant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @answer_variants }
    end
  end

  # GET /answer_variants/1
  # GET /answer_variants/1.xml
  def show
    @answer_variant = AnswerVariant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @answer_variant }
    end
  end

  # GET /answer_variants/new
  # GET /answer_variants/new.xml
  def new
    @answer_variant = AnswerVariant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @answer_variant }
    end
  end

  # GET /answer_variants/1/edit
  def edit
    @answer_variant = AnswerVariant.find(params[:id])
  end

  # POST /answer_variants
  # POST /answer_variants.xml
  def create
    @answer_variant = AnswerVariant.new(params[:answer_variant])

    respond_to do |format|
      if @answer_variant.save
        format.html { redirect_to(@answer_variant, :notice => 'Answer variant was successfully created.') }
        format.xml  { render :xml => @answer_variant, :status => :created, :location => @answer_variant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @answer_variant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /answer_variants/1
  # PUT /answer_variants/1.xml
  def update
    @answer_variant = AnswerVariant.find(params[:id])

    respond_to do |format|
      if @answer_variant.update_attributes(params[:answer_variant])
        format.html { redirect_to(@answer_variant, :notice => 'Answer variant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer_variant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_variants/1
  # DELETE /answer_variants/1.xml
  def destroy
    @answer_variant = AnswerVariant.find(params[:id])
    @answer_variant.destroy

    respond_to do |format|
      format.html { redirect_to(answer_variants_url) }
      format.xml  { head :ok }
    end
  end
end
