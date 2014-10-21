class LegalDoucumentsController < ApplicationController
  # GET /legal_doucuments
  # GET /legal_doucuments.json
  def index
    @legal_doucuments = LegalDoucument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @legal_doucuments }
    end
  end

  # GET /legal_doucuments/1
  # GET /legal_doucuments/1.json
  def show
    @legal_doucument = LegalDoucument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @legal_doucument }
    end
  end

  # GET /legal_doucuments/new
  # GET /legal_doucuments/new.json
  def new
    @legal_doucument = LegalDoucument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @legal_doucument }
    end
  end

  # GET /legal_doucuments/1/edit
  def edit
    @legal_doucument = LegalDoucument.find(params[:id])
  end

  # POST /legal_doucuments
  # POST /legal_doucuments.json
  def create
    @legal_doucument = LegalDoucument.new(params[:legal_doucument])

    respond_to do |format|
      if @legal_doucument.save
        format.html { redirect_to @legal_doucument, notice: 'Legal doucument was successfully created.' }
        format.json { render json: @legal_doucument, status: :created, location: @legal_doucument }
      else
        format.html { render action: "new" }
        format.json { render json: @legal_doucument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /legal_doucuments/1
  # PUT /legal_doucuments/1.json
  def update
    @legal_doucument = LegalDoucument.find(params[:id])

    respond_to do |format|
      if @legal_doucument.update_attributes(params[:legal_doucument])
        format.html { redirect_to @legal_doucument, notice: 'Legal doucument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @legal_doucument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_doucuments/1
  # DELETE /legal_doucuments/1.json
  def destroy
    @legal_doucument = LegalDoucument.find(params[:id])
    @legal_doucument.destroy

    respond_to do |format|
      format.html { redirect_to legal_doucuments_url }
      format.json { head :no_content }
    end
  end
end
