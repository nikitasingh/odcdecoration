class DecorationsController < ApplicationController
  # GET /decorations
  # GET /decorations.json
  @decorations = Decoration.all
  def hello
  #### your code goes here #####
  respond_to do |format|
    format.js { render :layout=>false }
  end
end

    def home
if params[:year]
  @decorations=Decoration.where(:year=>"2012")
else
  @decorations=Decoration.all
end  
  respond_to do |format|
    format.html
    format.js { render :layout=>false }
  end
end
 
  def index
    @decorations = Decoration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @decorations }
    end
  end

  # GET /decorations/1
  # GET /decorations/1.json
  def show
    @decoration = Decoration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @decoration }
    end
  end

  # GET /decorations/new
  # GET /decorations/new.json
  def new
    @decoration = Decoration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @decoration }
    end
  end

  # GET /decorations/1/edit
  def edit
    @decoration = Decoration.find(params[:id])
  end

  # POST /decorations
  # POST /decorations.json
  def create
    @decoration = Decoration.new(params[:decoration])

    respond_to do |format|
      if @decoration.save
        format.html { redirect_to @decoration, notice: 'Decoration was successfully created.' }
        format.json { render json: @decoration, status: :created, location: @decoration }
      else
        format.html { render action: "new" }
        format.json { render json: @decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /decorations/1
  # PUT /decorations/1.json
  def update
    @decoration = Decoration.find(params[:id])

    respond_to do |format|
      if @decoration.update_attributes(params[:decoration])
        format.html { redirect_to @decoration, notice: 'Decoration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @decoration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decorations/1
  # DELETE /decorations/1.json
  def destroy
    @decoration = Decoration.find(params[:id])
    @decoration.destroy

    respond_to do |format|
      format.html { redirect_to decorations_url }
      format.json { head :no_content }
    end
  end

  def search
    @decoration = Decoration.find(params[:decoration][:year])
  end
end
