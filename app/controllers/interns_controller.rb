class InternsController < ApplicationController

  # GET /interns
  # GET /interns.json
  def index
    @interns = Intern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interns }
    end
  end

  # GET /interns/1
  # GET /interns/1.json
  def show
    @intern = Intern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intern }
    end
  end

  # GET /interns/new
  # GET /interns/new.json
  def new
    @intern     = Intern.new
    @university = University.all
    @major      = Major.all
    @jobs       = JobTitle.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intern }
    end
  end

  # GET /interns/1/edit
  def edit
    @intern = Intern.find(params[:id])
  end

  # POST /interns
  # POST /interns.json
  def create

    data = params[:intern][:job_titles]
    params[:intern].delete :job_titles
    @intern = Intern.new(params[:intern])

    @year = (2010..2020).to_a

    data.each do |sid|
      if sid.empty? == false
        @intern.job_titles << JobTitle.find(sid.to_i)
      end
    end

    #respond_to :json
    respond_to do |format|
      if @intern.save

        #send email to user
        UserMailer.intern_email(@intern).deliver
        format.json { render :json => @intern , :status => :ok }
      else
        format.js { render :json => @intern.error, :status => :unprocessable_entity }
      end
    end



  end

  # PUT /interns/1
  # PUT /interns/1.json
  def update
    @intern = Intern.find(params[:id])

    respond_to do |format|
      if @intern.update_attributes(params[:intern])
        format.html { redirect_to @intern, notice: 'Intern was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interns/1
  # DELETE /interns/1.json
  def destroy
    @intern = Intern.find(params[:id])
    @intern.destroy

    respond_to do |format|
      format.html { redirect_to interns_url }
      format.json { head :no_content }
    end
  end
end
