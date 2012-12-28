class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
   
    @tasks= Task.page( params[:page]).per(5).order("id asc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
@tasks_user=Tasks_user.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])

  end

  # POST /tasks
  # POST /
  def create
  
  @decoration = Decoration.find(params[:decoration_id])
 
 respond_to do |format|
      if (params[:user_ids]!=nil) && (params[:task][:name]!="")
 #       p '!!!!!!!!!!!!!!!!! user id !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
  #      p params[:name]
         @task = @decoration.tasks.create(params[:task])
         @task.users = User.find(params[:user_ids])
  @task.save
        format.html { redirect_to @decoration, notice: 'Task created and assigned.' }
 format.json { render json: @task, status: :created, location: @task }
      else
   #         p '!!!!!!!!!!!!!!!!!!!!!!no id !!!!!!!!!!!!!!!!!!!!!!!!!!'
   format.html { redirect_to @decoration, notice: 'Add task name and assign it to a user' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      
      end
    end
 
  




  
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
  @task = Task.find(params[:id])
@decoration=Decoration.find(@task.decoration_id)
     @task.users = User.find(params[:user_ids])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @decoration, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
 
    @task = Task.find(params[:id])
@decoration=Decoration.find(@task.decoration_id)
p @decoration
    @task.destroy

    respond_to do |format|
      format.html { redirect_to @decoration }
      format.json { head :no_content }
    end
  end
end
