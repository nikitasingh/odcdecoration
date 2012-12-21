class TaskusersController < ApplicationController
  # GET /taskusers
  # GET /taskusers.json
  def index
    @taskusers = Taskuser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taskusers }
    end
  end

  # GET /taskusers/1
  # GET /taskusers/1.json
  def show
    @taskuser = Taskuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taskuser }
    end
  end

  # GET /taskusers/new
  # GET /taskusers/new.json
  def new
    @taskuser = Taskuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taskuser }
    end
  end

  # GET /taskusers/1/edit
  def edit
    @taskuser = Taskuser.find(params[:id])
  end

  # POST /taskusers
  # POST /taskusers.json
  def create
    @taskuser = Taskuser.new(params[:taskuser])

    respond_to do |format|
      if @taskuser.save
        format.html { redirect_to @taskuser, notice: 'Taskuser was successfully created.' }
        format.json { render json: @taskuser, status: :created, location: @taskuser }
      else
        format.html { render action: "new" }
        format.json { render json: @taskuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taskusers/1
  # PUT /taskusers/1.json
  def update
    @taskuser = Taskuser.find(params[:id])

    respond_to do |format|
      if @taskuser.update_attributes(params[:taskuser])
        format.html { redirect_to @taskuser, notice: 'Taskuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taskuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskusers/1
  # DELETE /taskusers/1.json
  def destroy
    @taskuser = Taskuser.find(params[:id])
    @taskuser.destroy

    respond_to do |format|
      format.html { redirect_to taskusers_url }
      format.json { head :no_content }
    end
  end
end
